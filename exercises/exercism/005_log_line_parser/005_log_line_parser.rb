# frozen_string_literal: false

# class LogLineParser
class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/\S{0,}\]:/, '').strip
  end

  def log_level
    @line.match(/\S{0,}\]/).to_s.match(/\w[A-Z]{0,}/).to_s.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

puts LogLineParser.new("[ERROR]: \t Corrupt disk\t \t \r\n").reformat
