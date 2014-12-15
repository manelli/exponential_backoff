module ExponentialBackoff
  def self.try(max_tries, &block)
    errors = []
    1.upto max_tries do |n|
      begin
        return block.call
      rescue => err
        errors << err
        wait(n)
        next
      end
    end
    raise FailedRequest.new(errors)
  end

  def self.wait(iteration)
    seconds = rand(1..1000) * 0.001
    waiting_time = (2**iteration + seconds).ceil
    sleep(waiting_time)
  end
  private_class_method :wait

  class FailedRequest < StandardError
    attr_reader :errors

    def initialize(errors)
      @errors = errors
    end
  end
end
