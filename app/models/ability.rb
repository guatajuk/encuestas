class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? "Admin"
        can :manage, :all
    elsif user.has_role? "Student"
    	
    elsif user.has_role? "Teacher"

    elsif user.has_role? "dean"
    	can :manage, Survey
    elsif user.has_role? "Director"
    	
    end

  end

end