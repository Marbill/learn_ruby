class Timer
  attr_reader :seconds
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds=seconds
  end

  def time_string
    s = 0
    m = 0
    h = 0
    if seconds <= 59
      s = seconds
    else
      if (seconds / 60) > 59
        h = (seconds / 60) / 60
        m = (seconds / 60) % 60
        s = seconds % 60
      else
        m = seconds / 60
        s = seconds % 60
      end
    end
    if s <= 9
      s="0"+s.to_s
    end
    if m <= 9
      m="0" + m.to_s
    end
    if h <= 9
      h="0"+h.to_s
    end

    output = h.to_s + ":" + m.to_s + ":" + s.to_s
  end
end
