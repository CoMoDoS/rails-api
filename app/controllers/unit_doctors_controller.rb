class UnitDoctorsController < ApplicationController
  before_action :set_unit_doctor, only: [:show, :update, :destroy]

  # GET /unit_doctors
  def index
    @unit_doctors = UnitDoctor.all

    render json: @unit_doctors
  end

  # GET /unit_doctors/1
  def show
    render json: @unit_doctor
  end

  # POST /unit_doctors
  def create
    @unit_doctor = UnitDoctor.new(unit_doctor_params)

    if @unit_doctor.save
      render json: @unit_doctor, status: :created, location: @unit_doctor
    else
      render json: @unit_doctor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /unit_doctors/1
  def update
    if @unit_doctor.update(unit_doctor_params)
      render json: @unit_doctor
    else
      render json: @unit_doctor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /unit_doctors/1
  def destroy
    @unit_doctor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_doctor
      @unit_doctor = UnitDoctor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unit_doctor_params
      params.require(:unit_doctor).permit(:id_unit, :id_doctor)
    end
end
