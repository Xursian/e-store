class ProvencesController < ApplicationController
  # GET /provences
  # GET /provences.json
  def index
    @provences = Provence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @provences }
    end
  end

  # GET /provences/1
  # GET /provences/1.json
  def show
    @provence = Provence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @provence }
    end
  end

  # GET /provences/new
  # GET /provences/new.json
  def new
    @provence = Provence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @provence }
    end
  end

  # GET /provences/1/edit
  def edit
    @provence = Provence.find(params[:id])
  end

  # POST /provences
  # POST /provences.json
  def create
    @provence = Provence.new(params[:provence])

    respond_to do |format|
      if @provence.save
        format.html { redirect_to @provence, notice: 'Provence was successfully created.' }
        format.json { render json: @provence, status: :created, location: @provence }
      else
        format.html { render action: "new" }
        format.json { render json: @provence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /provences/1
  # PUT /provences/1.json
  def update
    @provence = Provence.find(params[:id])

    respond_to do |format|
      if @provence.update_attributes(params[:provence])
        format.html { redirect_to @provence, notice: 'Provence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @provence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provences/1
  # DELETE /provences/1.json
  def destroy
    @provence = Provence.find(params[:id])
    @provence.destroy

    respond_to do |format|
      format.html { redirect_to provences_url }
      format.json { head :no_content }
    end
  end
end
