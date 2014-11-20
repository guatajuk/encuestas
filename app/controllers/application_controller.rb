class ApplicationController < ActionController::Base

  # This code apply a specific template for specific users
  # based on your role.

  layout :set_layout


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # Locate Definition
  before_action :set_locale
 
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # Breadcrumb Home Page
  add_breadcrumb "homepage", :root_path, :class => "Back to the home page"

  # Cancan Authorization
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to new_user_session_path, :alert => exception.message
  end

  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  # Breadcrumbs Dynamic Setting
  protected
  def add_breadcrumb name, url = ''
    @breadcrumbs ||= []
    url = eval(url.to_s) if url =~ /_path|_url|@/
    @breadcrumbs << [name, url]
  end
 
  def self.add_breadcrumb name, url, options = {}
    before_filter options do |controller|
      controller.send(:add_breadcrumb, name, url)
    end
  end


  # -------------------------------------------------- #
  # Set a specific template for users definied by role #
  # This capture the role from database                #
  # -------------------------------------------------- #

  def set_layout
    if 1==1
      'application'
    else
      'dean'
    end
  end

  # -------------------------------------------------- #

end
