class PrivateMenusController < ApplicationController
  before_action :authenticate_user!

  def index
    @businesses = current_user.businesses
  end

def show
  @business = current_user.businesses.find_by(id: params[:id])

  if @business.nil?
    redirect_to mesmenus_path, alert: "Vous n'avez pas accès à ce restaurant."
    return
  end

  @menus = @business.menus.includes(:items)
end

end
