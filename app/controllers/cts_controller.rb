class CtsController < ApplicationController
  # GET /cts
  # GET /cts.json
  def index
    @cts = Ct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cts }
    end
  end

  # GET /cts/1
  # GET /cts/1.json
  def show
    @ct = Ct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ct }
    end
  end

  # GET /cts/new
  # GET /cts/new.json
  def new
    @ct = Ct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ct }
    end
  end

  # GET /cts/1/edit
  def edit
    @ct = Ct.find(params[:id])
  end

  # POST /cts
  # POST /cts.json
  def create
    @ct = Ct.new(params[:ct])

    respond_to do |format|
      if @ct.save
        format.html { redirect_to @ct, notice: 'Ct was successfully created.' }
        format.json { render json: @ct, status: :created, location: @ct }
      else
        format.html { render action: "new" }
        format.json { render json: @ct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cts/1
  # PUT /cts/1.json
  def update
    @ct = Ct.find(params[:id])

    respond_to do |format|
      if @ct.update_attributes(params[:ct])
        format.html { redirect_to @ct, notice: 'Ct was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cts/1
  # DELETE /cts/1.json
  def destroy
    @ct = Ct.find(params[:id])
    @ct.destroy

    respond_to do |format|
      format.html { redirect_to cts_url }
      format.json { head :no_content }
    end
  end
end
