class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? "Admin"
      can :manage, [Survey, SurveyType, Aspect, Question, Course, User]
    elsif user.has_role? "Student"
    	can [:update, :read], Questionnaire
    elsif user.has_role? "Teacher"
        
    elsif user.has_role? "Dean"
    	can :manage, [Survey, SurveyType, Aspect, Question]
      can [:update, :read], User
    elsif user.has_role? "Director"
      
      can [:update, :read], Questionnaire
    end
    
  end
end