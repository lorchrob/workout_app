class RunsController < ApplicationController
  def show
    @run = Run.find(params[:id])
  end
  
  def new
    @run = Run.new
  end
  
  def create
    @run = current_user.runs.build(user_params)
    if @run.save
      redirect_to "/log"
    else
      flash.now[:danger] = "Error submitting form"
      render 'new'
    end
  end
  
  def destroy
    Run.find(params[:id]).destroy
    redirect_to "/log"
  end
  
  private
  
    def user_params
      params.require(:run).permit(:length, :duration, :date)
    end
end