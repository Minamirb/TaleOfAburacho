class FeelingsController < ApplicationController
  # GET /feelings
  # GET /feelings.json
  def index

    @feelings = Feeling.all
    @sake = Sake.find(params[:sake_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feelings }
    end
  end

  # GET /feelings/1
  # GET /feelings/1.json
  def  show
    @feeling = Feeling.find(params[:id])
    @sake = Sake.find(params[:sake_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feeling }
    end
  end


  # GET /feelings/new
  # GET /feelings/new.json
  def new
    @feeling = Feeling.new
    @sake = Sake.find(params[:sake_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feeling }
    end
  end

  # GET /feelings/1/edit
  def edit
    @feeling = Feeling.find(params[:id])
    @sake = Sake.find(params[:sake_id])
  end

  # POST /feelings
  # POST /feelings.json
  def create
    @feeling = Feeling.new(params[:feeling])
    @feeling.sake_id= params[:sake_id]

    respond_to do |format|
      if @feeling.save
        format.html { redirect_to @feeling, notice: 'Feeling was successfully created.' }
        format.json { render json: @feeling, status: :created, location: @feeling }
      else
        format.html { render action: "new" }
        format.json { render json: @feeling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feelings/1
  # PUT /feelings/1.json
  def update
    @feeling = Feeling.find(params[:id])

    respond_to do |format|
      if @feeling.update_attributes(params[:feeling])
        format.html { redirect_to @feeling, notice: 'Feeling was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @feeling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feelings/1
  # DELETE /feelings/1.json
  def destroy
    @feeling = Feeling.find(params[:id])
    @feeling.destroy

    respond_to do |format|
      format.html { redirect_to feelings_url }
      format.json { head :ok }
    end
  end
end
