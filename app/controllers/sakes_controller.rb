# -*- coding: utf-8 -*-
class SakesController < ApplicationController
  # GET /sakes
  # GET /sakes.json
  def index
    @sake = Sake.new(params[:sake])
    @sakes = if params[:sake] && params[:sake][:name]
               Sake.where("name like ?", "%#{params[:sake][:name]}%")
             else
               Sake
             end.all
    @histories = History.where("member_id = ?", current_member.id).where("drunk = ?", true).select("sake_id").map{|t| t.sake_id}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sakes }
    end
  end

  # GET /sakes/1
  # GET /sakes/1.json
  def show
    @sake = Sake.find(params[:id])
    @my_feel =Feeling.where(:sake_id =>params[:id],:member_id =>current_member.id)
    @our_feel =Feeling.where( :sake_id =>params[:id]).limit(10).order('updated_at DESC')
    @history = History.where("member_id = ? AND sake_id = ?", current_member.id, @sake.id).where("drunk = ?", true)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sake }
    end
  end


  # GET /sakes/new
  # GET /sakes/new.json
  def new
    @sake = Sake.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sake }
    end
  end

  # GET /sakes/1/edit
  def edit
    @sake = Sake.find(params[:id])
  end

  # POST /sakes
  # POST /sakes.json
  def create
    @sake = Sake.new(params[:sake])

    respond_to do |format|
      if @sake.save
        format.html { redirect_to @sake, notice: 'Sake was successfully created.' }
        format.json { render json: @sake, status: :created, location: @sake }
      else
        format.html { render action: "new" }
        format.json { render json: @sake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sakes/1
  # PUT /sakes/1.json
  def update
    @sake = Sake.find(params[:id])

    respond_to do |format|
      if @sake.update_attributes(params[:sake])
        format.html { redirect_to @sake, notice: 'Sake was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sakes/1
  # DELETE /sakes/1.json
  def destroy
    @sake = Sake.find(params[:id])
    @sake.destroy

    respond_to do |format|
      format.html { redirect_to sakes_url }
      format.json { head :ok }
    end
  end
end
