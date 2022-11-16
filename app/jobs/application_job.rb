class ApplicationJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError

  def self.scheduled(queue, klass, ...)
    job = job_or_instantiate(...)
    job.queue_name = queue
    job.enqueue
  end
end
