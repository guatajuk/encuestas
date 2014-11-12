class SurveyTypesController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_survey_type, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  add_breadcrumb "survey_type", '/survey_types', :title => "Back to survey types"
  add_breadcrumb "new", '/new', :only => [:new,:create], :title => "Back to new"
  add_breadcrumb "edit", '/edit', :only => [:edit,:update], :title => "Back to edit"

  def index
    @survey_types = SurveyType.all
    respond_with(@survey_types)
  end

  def show
    respond_with(@survey_type)
  end

  def new
    @survey_type = SurveyType.new
    respond_with(@survey_type)
  end

  def edit
  end

  def create
    @survey_type = SurveyType.new(survey_type_params)
    @survey_type.save
    respond_with(@survey_type)
  end

  def update
    @survey_type.update(survey_type_params)
    respond_with(@survey_type)
  end

  def destroy
    @survey_type.destroy
    respond_with(@survey_type)
  end

  private
    def set_survey_type
      @survey_type = SurveyType.find(params[:id])
    end

    def survey_type_params
      params.require(:survey_type).permit(:name)
    end
    def set_breadcrumb_for cat
      set_breadcrumb_for cat.parent if cat.parent
      add_breadcrumb cat.name, "category_path(#{cat.id})"
    end
end
