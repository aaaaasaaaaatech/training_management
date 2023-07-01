class TrainingsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :edit, :destroy]
  
  def index
    @training = Training.where(user_id: current_user.id)
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      redirect_to root_path
    else
      flash[:notice] = "必ず選んでください"
      render :new
    end
  end

  def edit
     @training = Training.find(params[:id])
  end

  def update
    if training = Training.find(params[:id])
      training.update(training_params)
      redirect_to root_path
    else
      flash[:notice] = "必ず選んでください"
      render :edit
    end
  end

  def destroy
    training = Training.find(params[:id])
    training.destroy
    redirect_to action: :index
  end

  private

  def training_params
    params.require(:training).permit(:boxing_id).merge(user_id: current_user.id)
  end

end
