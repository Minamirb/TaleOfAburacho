class HistoriesController < ApplicationController
  # GET /histories
  # GET /histories.json
  def index
    @categories = Category.all

    unless params[:next_order].blank?
      @histories = History.where("next_order = ?", true).order("id").all
    else
      unless params[:drunk].blank?
        @histories = History.where("drunk = ?", true).order("id").all
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @histories }
    end
  end

  # GET /histories/1
  # GET /histories/1.json
  def show
    @history = History.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @history }
    end
  end

  # GET /histories/new
  # GET /histories/new.json
  def new
    @history = History.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @history }
    end
  end

  # GET /histories/1/edit
  def edit
    @history = History.find(params[:id])
  end

  # POST /histories
  # POST /histories.json
  def create
    @history = History.new(params[:history])
    @history.sake_id = params[:sake_id]
    @history.member_id = current_member.id
    @history.drunk = true

    respond_to do |format|
      if @history.save
        format.html { redirect_to @history, notice: 'History was successfully created.' }
        format.json { render json: @history, status: :created, location: @history }
      else
        format.html { render action: "new" }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /histories/1
  # PUT /histories/1.json
  def update
    @history = History.find(params[:id])

    respond_to do |format|
      if @history.update_attributes(params[:history])
        format.html { redirect_to @history, notice: 'History was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /histories/1
  # DELETE /histories/1.json
  def destroy
    @history = History.find(params[:id])
    @history.destroy

    respond_to do |format|
      format.html { redirect_to histories_url }
      format.json { head :ok }
    end
  end
end
