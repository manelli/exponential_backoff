module ExponentialBackoff
  RequestNotSucceded = Class.new(StandardError)

  def self.try(max_tries, &block)
    1.upto max_tries do |n|
      begin
        return res = block.call
      rescue => error
        wait(n)
        next
      end
    end
    raise RequestNotSucceded
  end

  private

  def self.wait(iteration)
    seconds = rand(1..1000) * 0.001
    waiting_time = (2**iteration + seconds).ceil
    sleep(waiting_time)
  end
end