class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? "admin"
        can :manage, :all
    elsif user.has_role? "student"
    	
    elsif user.has_role? "teacher"

    elsif user.has_role? "dean"
    	can :manage, Survey
    elsif user.has_role? "director"
    	
    end

  end

end