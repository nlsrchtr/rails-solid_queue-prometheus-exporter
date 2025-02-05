class TalkerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    message = "It's #{Time.current}, we should talk ;-()"
    puts message
    Rails.logger.info message
  end
end
