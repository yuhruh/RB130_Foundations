class Device
  attr_accessor :recordings

  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    record(yield) if block_given?
    recordings
  end

  def play
    puts listen.last
  end
end



listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.listen {"Hi"}
p listener.recordings #["Hello World!", "Hi"]
listener.play # Outputs "Hi"