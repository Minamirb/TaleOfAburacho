class CategoryHistoriesController < ApplicationController
  # GET /category_histories
  # GET /category_histories.json
  def index
    @category_histories = CategoryHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @category_histories }
    end
  end

  # GET /category_histories/1
  # GET /category_histories/1.json
  def show
    @category_history = CategoryHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category_history }
    end
  end

  # GET /category_histories/new
  # GET /category_histories/new.json
  def new
    @category_history = CategoryHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category_history }
    end
  end

  # GET /category_histories/1/edit
  def edit
    @category_history = CategoryHistory.find(params[:id])
  end

  # POST /category_histories
  # POST /category_histories.json
  def create
    @category_history = CategoryHistory.new(params[:category_history])

    respond_to do |format|
      if @category_history.save
        format.html { redirect_to @category_history, notice: 'Category history was successfully created.' }
        format.json { render json: @category_history, status: :created, location: @category_history }
      else
        format.html { render action: "new" }
        format.json { render json: @category_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /category_histories/1
  # PUT /category_histories/1.json
  def update
    @category_history = CategoryHistory.find(params[:id])

    respond_to do |format|
      if @category_history.update_attributes(params[:category_history])
        format.html { redirect_to @category_history, notice: 'Category history was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @category_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_histories/1
  # DELETE /category_histories/1.json
  def destroy
    @category_history = CategoryHistory.find(params[:id])
    @category_history.destroy

    respond_to do |format|
      format.html { redirect_to category_histories_url }
      format.json { head :ok }
    end
  end
end
