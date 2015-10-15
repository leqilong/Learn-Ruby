class Timer
  attr_accessor :seconds
  def seconds
    @timer = 0
  end
  def time_string
    hour = @seconds / 3600
    minutes = @seconds / 60 % 60
    second = @seconds % 60
    "%02d:%02d:%02d" % [hours, minutes, second]
  end
end
