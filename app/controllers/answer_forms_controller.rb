class AnswerFormsController < ApplicationController
  before_action :set_answer_form, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  load_and_authorize_resource

  def index
    @answer_forms = AnswerForm.all
    respond_with(@answer_forms)
  end

  def show
    respond_with(@answer_form)
  end

  def new
    @answer_form = AnswerForm.new
    respond_with(@answer_form)
  end

  def edit
  end

  def create
    @answer_form = AnswerForm.new(answer_form_params)
    @answer_form.save
    respond_with(@answer_form)
  end

  def update
    @answer_form.update(answer_form_params)
    respond_with(@answer_form)
  end

  def destroy
    @answer_form.destroy
    respond_with(@answer_form)
  end

  private
    def set_answer_form
      @answer_form = AnswerForm.find(params[:id])
    end

    def answer_form_params
      params.require(:answer_form).permit(:details, :course_id, :survey_id, user_ids: [])
    end
end