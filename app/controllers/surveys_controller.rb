class SurveysController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  add_breadcrumb "survey", '/surveys', :title => "Back to surveys"
  add_breadcrumb "new", '/new', :only => [:new,:create], :title => "Back to new"
  add_breadcrumb "edit", '/edit', :only => [:edit,:update], :title => "Back to edit"

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
      params.require(:survey).permit(:name, :deadline, :survey_type_id, question_ids: [])
    end
    def set_breadcrumb_for cat
      set_breadcrumb_for cat.parent if cat.parent
      add_breadcrumb cat.name, "category_path(#{cat.id})"
    end
end
