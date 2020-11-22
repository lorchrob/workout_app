class WeightWorkoutsController < ApplicationController
  def show
    @weight_workout = WeightWorkout.find(params[:id])
  end
  
  def new
    @weight_workout = WeightWorkout.new
  end
  
  def create
    @weight_workout = WeightWorkout.new(user_params)
    if @weight_workout.save
     redirect_to @weight_workout
    else
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:weight_workout).permit(:duration)
    end
end