class DashboardsController < ApplicationController
  def index
    @products = contentful.entries(content_type: 'post')
  end

  def show
    @product = contentful.entries(content_type: 'post', "sys.id" => params[:id]).first
  end
end
