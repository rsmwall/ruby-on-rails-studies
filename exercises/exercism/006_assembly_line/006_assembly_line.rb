# frozen_string_literal: true

# class Assembly
class AssemblyLine
  CARS_PER_HOUR = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    rate =
      if @speed < 5 then 1
      elsif @speed < 9 then 0.9
      elsif @speed == 9 then 0.8
      else
        0.77
      end

    ((@speed * CARS_PER_HOUR) * rate).to_f
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end

puts AssemblyLine.new(9).production_rate_per_hour
puts AssemblyLine.new(9).working_items_per_minute
