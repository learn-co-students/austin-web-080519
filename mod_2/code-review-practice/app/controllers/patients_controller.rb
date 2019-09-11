class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end
    def show
        @patient = Patient.find(params[:id])
        @doctor = @patient.doctor
    end
    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.create(patient_params)
        # byebug
        if @patient.valid?
            redirect_to patient_path(@patient)
        else
            render :new
        end
    end
    private
    def patient_params
        params.require(:patient).permit(:name, :age, :doctor_id)
    end
end
