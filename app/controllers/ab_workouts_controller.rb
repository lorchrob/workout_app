class AbWorkoutsController < ApplicationController
  def show
    @ab_workout = AbWorkout.find(params[:id])
  end
  
  def new
    @ab_workout = AbWorkout.new
  end
  
  def create
    @ab_workout = AbWorkout.new(user_params)
    if @ab_workout.save
     redirect_to @ab_workout
    else
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:ab_workout).permit(:duration, :date)
    end
end