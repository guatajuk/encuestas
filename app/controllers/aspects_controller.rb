class AspectsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_aspect, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  add_breadcrumb I18n.t("aspect"), '/aspects', :title => "Back to aspects"
  add_breadcrumb I18n.t("new"), '/new', :only => [:new,:create], :title => "Back to new"
  add_breadcrumb I18n.t("edit"), '/edit', :only => [:edit,:update], :title => "Back to edit"

  def index
    @aspects = Aspect.all
    respond_with(@aspects)
  end

  def show
    respond_with(@aspect)
  end

  def new
    @aspect = Aspect.new
    respond_with(@aspect)
  end

  def edit
  end

  def create
    @aspect = Aspect.new(aspect_params)
    @aspect.save
    respond_with(@aspect)
  end

  def update
    @aspect.update(aspect_params)
    respond_with(@aspect)
  end

  def destroy
    @aspect.destroy
    respond_with(@aspect)
  end

  private
    def set_aspect
      @aspect = Aspect.find(params[:id])
    end

    def aspect_params
      params.require(:aspect).permit(:name)
    end
    def set_breadcrumb_for cat
      set_breadcrumb_for cat.parent if cat.parent
      add_breadcrumb cat.name, "category_path(#{cat.id})"
    end
end
