class AspectsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_aspect, only: [:show, :edit, :update, :destroy]

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
end
