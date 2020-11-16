class RunsController < ApplicationController
  def show
    @run = Run.find(params[:id])
  end
  
  def new
    @run = Run.new
  end
  
  def create
    @run = Run.new(user_params)
    if @run.save
     redirect_to @run
    else
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:run).permit(:length, :duration)
    end
end