class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @questionnaires = Questionnaire.all
    respond_with(@questionnaires)
  end

  def show
    respond_with(@questionnaire)
  end

  def new
    @questionnaire = Questionnaire.new
    respond_with(@questionnaire)
  end

  def edit
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    @questionnaire.save
    respond_with(@questionnaire)
  end

  def update
    @questionnaire.update(questionnaire_params)
    respond_with(@questionnaire)
    10.times {puts "" }
    puts questionnaire_params
    10.times {puts "" }
  end

  def destroy
    @questionnaire.destroy
    respond_with(@questionnaire)
  end

  private
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    def questionnaire_params
      params.require(:questionnaire).permit(:detail, :course_id, :survey_id, user_ids: [],
                                            survey_attributes: [:id, :name, :active,
                                              questions_attributes: [:id, :item,
                                                answers_attributes: [:id, :answerField]
                                              ]
                                            ])
    end
end
