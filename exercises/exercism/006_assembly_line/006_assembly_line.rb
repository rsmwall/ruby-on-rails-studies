# frozen_string_literal: true

# class Assembly
class AssemblyLine
  def initialize(hour)
    @hour = hour
  end

  def production_rate_per_hour
    rate =
      if @hour < 5 then 1
      elsif @hour < 9 then 0.9
      elsif @hour == 9 then 0.8
      else
        0.77
      end

    ((@hour * 221) * rate).to_f
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end

puts AssemblyLine.new(9).production_rate_per_hour
puts AssemblyLine.new(9).working_items_per_minute
