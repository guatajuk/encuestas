class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? "Admin"
        can :manage, :all
    elsif user.has_role? "Student"
    	can [:update, :read], AnswerForm
    elsif user.has_role? "Teacher"
        
    elsif user.has_role? "Dean"
    	can :manage, [Survey, SurveyType, Aspect, Question]
      can [:update, :read], User
    elsif user.has_role? "Director"
    	
    end
    
  end
end