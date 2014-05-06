module AssignmentsHelper

  def is_challenge_today?
    return @assignment.date == Date.today
  end

end
