class AbWorkoutsController < ApplicationController
  def show
    @ab_workout = AbWorkout.find(params[:id])
  end
  
  def new
    @ab_workout = AbWorkout.new
  end
  
  def create
    @ab_workout = current_user.ab_workouts.build(user_params)
    if @ab_workout.save
     redirect_to "/log"
    else
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:ab_workout).permit(:duration, :date)
    end
end