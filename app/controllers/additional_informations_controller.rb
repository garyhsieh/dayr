class AdditionalInformationsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  load_and_authorize_resource

  # GET /additional_informations
  # GET /additional_informations.json
  def index
    @additional_informations = AdditionalInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @additional_informations }
    end
  end

  # GET /additional_informations/1
  # GET /additional_informations/1.json
  def show
    @additional_information = AdditionalInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @additional_information }
    end
  end

  # GET /additional_informations/new
  # GET /additional_informations/new.json
  def new
    @additional_information = AdditionalInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @additional_information }
    end
  end

  # GET /additional_informations/1/edit
  def edit
    @additional_information = AdditionalInformation.find(params[:id])
  end

  # POST /additional_informations
  # POST /additional_informations.json
  def create
    @additional_information = AdditionalInformation.new(params[:additional_information])

    respond_to do |format|
      if @additional_information.save
        format.html { redirect_to @additional_information, notice: 'Additional information was successfully created.' }
        format.json { render json: @additional_information, status: :created, location: @additional_information }
      else
        format.html { render action: "new" }
        format.json { render json: @additional_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /additional_informations/1
  # PUT /additional_informations/1.json
  def update
    @additional_information = AdditionalInformation.find(params[:id])

    respond_to do |format|
      if @additional_information.update_attributes(params[:additional_information])
        format.html { redirect_to @additional_information, notice: 'Additional information was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @additional_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additional_informations/1
  # DELETE /additional_informations/1.json
  def destroy
    @additional_information = AdditionalInformation.find(params[:id])
    @additional_information.destroy

    respond_to do |format|
      format.html { redirect_to additional_informations_url }
      format.json { head :ok }
    end
  end
end
