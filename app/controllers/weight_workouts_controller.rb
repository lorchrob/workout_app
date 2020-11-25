class WeightWorkoutsController < ApplicationController
  def show
    @weight_workout = WeightWorkout.find(params[:id])
  end
  
  def new
    @weight_workout = WeightWorkout.new
  end
  
  def create
    @weight_workout = current_user.weight_workouts.build(user_params)
    if @weight_workout.save
     redirect_to "/log"
    else
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:weight_workout).permit(:duration, :date)
    end
end