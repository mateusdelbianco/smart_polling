require "smart_polling/version"

class SmartPolling
  class TimeoutError < StandardError; end

  def self.poll(seconds: 10, delay: 1, timeout_error: nil)
    timeout_error ||= TimeoutError.new
    time_limit = Time.now + seconds

    while Time.now < time_limit do
      result = yield
      return result if result
      sleep delay
    end

    raise timeout_error
  end
end
