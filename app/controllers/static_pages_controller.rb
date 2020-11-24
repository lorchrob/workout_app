class StaticPagesController < ApplicationController
  include StaticPagesHelper
  
  def landing
  end

  def about
  end

  def log_run
    @runs = current_user.runs.order(:date)
    @weight_workouts = current_user.weight_workouts.order(:date)
    @ab_workouts = current_user.ab_workouts.order(:date)
  end

  def generate
  end
  
  def generate_parse
    @duration = params[:duration][0].to_i
    @run = params[:run].to_i
    @abs = params[:abs].to_i
    @weights = params[:weights].to_i
    @run_duration, @ab_duration, @weight_duration, @ab_exercises, @lifts = generate_workout(@duration, @run, @abs, @weights)
  end

  def stats
  end
end
