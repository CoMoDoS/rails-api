class MedicalUnitsController < ApplicationController
  before_action :set_medical_unit, only: [:show, :update, :destroy]

  # GET /medical_units
  def index
    @medical_units = MedicalUnit.all

    render json: @medical_units
  end

  # GET /medical_units/1
  def show
    render json: @medical_unit
  end

  # POST /medical_units
  def create
    @medical_unit = MedicalUnit.new(medical_unit_params)

    if @medical_unit.save
      render json: @medical_unit, status: :created, location: @medical_unit
    else
      render json: @medical_unit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medical_units/1
  def update
    if @medical_unit.update(medical_unit_params)
      render json: @medical_unit
    else
      render json: @medical_unit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medical_units/1
  def destroy
    @medical_unit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_unit
      @medical_unit = MedicalUnit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medical_unit_params
      params.permit(:name, :location, :speciality, :image)
    end
end
