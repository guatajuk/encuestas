class QuestionsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  add_breadcrumb "question", '/questions', :title => "Back to questions"
  add_breadcrumb "new", '/new', :only => [:new,:create], :title => "Back to new"
  add_breadcrumb "edit", '/edit', :only => [:edit,:update], :title => "Back to edit"

  def index
    @questions = Question.all.page params[:page]
    respond_with(@questions)
  end

  def show
    respond_with(@question)
  end

  def new
    @question = Question.new
    respond_with(@question)
  end

  def edit
  end

  def create
    @question = Question.new(question_params)
    @question.save
    respond_with(@question)
  end

  def update
    @question.update(question_params)
    respond_with(@question)
  end

  def destroy
    @question.destroy
    respond_with(@question)
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:item, :aspect)
    end
    def set_breadcrumb_for cat
      set_breadcrumb_for cat.parent if cat.parent
      add_breadcrumb cat.name, "category_path(#{cat.id})"
    end
end
