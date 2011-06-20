class SakesController < ApplicationController
  # GET /sakes
  # GET /sakes.json
  def index
    @sakes = Sake.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sakes }
    end
  end

  # GET /sakes/1
  # GET /sakes/1.json
  def show
    @sake = Sake.find(params[:id])

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
