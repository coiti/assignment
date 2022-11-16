require "resque"
require "resque/tasks"
require "resque/scheduler/tasks"

namespace :resque do
  task setup_schedule: :setup do
    Resque.schedule =
      YAML.safe_load_file(Rails.root + "config/resque_schedule.yml")
  end

  task scheduler: :setup_schedule
end
