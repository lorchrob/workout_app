class StaticPagesController < ApplicationController
  def landing
  end

  def about
  end

  def log_run
    @runs = Run.all
  end

  def generate
  end

  def stats
  end
end
