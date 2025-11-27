#Monsif ramhane – 2025-11-13
class BusinessesPublicController < ApplicationController

  def index
    @businesses = Business.order(name: :asc)
  end

  def show
    @business = Business.find(params[:id])

    include = { menus: { include: { menus: { include: :items } } } }

    respond_to do |format|
      format.html
      format.json { render :json => @business.to_json(include: include) }
      format.xml  { render :xml => @business.to_json(include: include).xml()  }
    end
  end

end
