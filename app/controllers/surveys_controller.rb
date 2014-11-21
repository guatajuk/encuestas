class SurveysController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    @surveys = Survey.all
    respond_with(@surveys)
  end

  def show
    respond_with(@survey)
  end

  def new
    @survey = Survey.new
    respond_with(@survey)
  end

  def edit
  end

  def create
    @survey = Survey.create(survey_params)
    respond_with(@survey)
  end

  def update
    @survey.update(survey_params)
    respond_with(@survey)
  end

  def destroy
    @survey.destroy
    respond_with(@survey)
  end

  private
    def set_survey
      @survey = Survey.find(params[:id])
    end

    def survey_params
      params.require(:survey).permit(:name, :active, :survey_type_id, question_ids: [])
    end
end
