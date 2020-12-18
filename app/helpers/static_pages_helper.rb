module StaticPagesHelper
  def generate_workout(duration, run, abs, weights)
    num_left = run + abs + weights
    
    # These are variables to be returned
    run_duration = 0
    ab_duration = 0
    weight_duration = 0
    ab_exercises = []
    lifts = []
    
    if run == 1
      if num_left == 1 || duration <= 10
        run_duration = duration
      else
        run_duration = rand(duration)
        if run_duration < 10 
          run_duration = 10
        end
      end
      duration = duration - run_duration
      num_left = num_left - 1
    end
    
    if abs == 1 and duration > 0
      if (num_left == 1)
        ab_duration = duration
      else
        ab_duration = rand(duration)
      end
      duration = duration - ab_duration
      num_left = num_left - 1
      
      num_ab_exercises = ab_duration 
      
      for i in 0...num_ab_exercises
        i = i # Ugly-- prevent warning that i is unused
        rand_workout = AbWorkout.workouts[rand(AbWorkout.workouts.length())]
        ab_exercises.push(rand_workout)
      end
    end
    
    if weights == 1 and duration > 0
      weight_duration = duration
      duration = duration - weight_duration
      num_left = num_left - 1
      
      num_weight_exercises = (weight_duration / 3.0).ceil()
      
      for i in 0...num_weight_exercises
        rand_workout = WeightWorkout.workouts[rand(WeightWorkout.workouts.length())]
        lifts.push(rand_workout)
      end
    end
    
    return run_duration, ab_duration, weight_duration, ab_exercises, lifts
  end
end
