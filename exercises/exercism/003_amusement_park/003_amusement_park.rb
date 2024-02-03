# frozen_string_literal: true

# class Attendee
class Attendee
  def initialize(height)
    @height = height
  end

  attr_reader :height, :pass_id

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end

attendee = Attendee.new(106)
attendee.issue_pass!(42)
attendee.revoke_pass!
puts attendee.pass_id
