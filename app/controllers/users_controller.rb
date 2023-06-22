class UsersController < ApplicationController
  def index
    @training = Training.all
    @name = current_user.name
    @trainings = current_user.trainings 
end
