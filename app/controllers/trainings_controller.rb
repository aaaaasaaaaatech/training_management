class TrainingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  
  def index
    @training = Training.all
  end

  def new
    @trainings = Training.new
  end

  def create
    @trainings = Training.new(training_params)
    if @trainings.save
      
      redirect_to root_path
    else
      flash[:notice] = "必ず選んでください"
      render :new
    end
  end

  private

  def training_params
    params.require(:training).permit(:boxing_id)
  end

end
