class Admin::BusinessesController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  def index
    @businesses = Business.order(name: :desc)
  end

  def show
    @business = Business.find(params[:id])
  end
end
