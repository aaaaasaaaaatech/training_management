class TrainingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  
  def index
    
  end

  def new
    @trainings = Training.new
  end
end
