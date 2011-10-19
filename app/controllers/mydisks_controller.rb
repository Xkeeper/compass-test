class MydisksController < ApplicationController
  # GET /mydisks
  # GET /mydisks.json
  def index
    @mydisks = Mydisk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mydisks }
    end
  end

  # GET /mydisks/1
  # GET /mydisks/1.json
  def show
    @mydisk = Mydisk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mydisk }
    end
  end

  # GET /mydisks/new
  # GET /mydisks/new.json
  def new
    @mydisk = Mydisk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mydisk }
    end
  end

  # GET /mydisks/1/edit
  def edit
    @mydisk = Mydisk.find(params[:id])
  end

  # POST /mydisks
  # POST /mydisks.json
  def create
    @mydisk = Mydisk.new(params[:mydisk])

    respond_to do |format|
      if @mydisk.save
        format.html { redirect_to @mydisk, notice: 'Mydisk was successfully created.' }
        format.json { render json: @mydisk, status: :created, location: @mydisk }
      else
        format.html { render action: "new" }
        format.json { render json: @mydisk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mydisks/1
  # PUT /mydisks/1.json
  def update
    @mydisk = Mydisk.find(params[:id])

    respond_to do |format|
      if @mydisk.update_attributes(params[:mydisk])
        format.html { redirect_to @mydisk, notice: 'Mydisk was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mydisk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mydisks/1
  # DELETE /mydisks/1.json
  def destroy
    @mydisk = Mydisk.find(params[:id])
    @mydisk.destroy

    respond_to do |format|
      format.html { redirect_to mydisks_url }
      format.json { head :ok }
    end
  end
end
