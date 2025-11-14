#Monsif ramhane – 2025-11-13
class BusinessesPublicController < ApplicationController

  def index
    @businesses = Business.order(name: :asc)
  end

  def show
    @business = Business.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @business.to_json(include: { menus: { include: :items } }) }
      format.xml  { render xml:  @business.to_xml(include: { menus: { include: :items } }) }
    end
  end

end
