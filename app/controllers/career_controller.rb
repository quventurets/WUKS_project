class CareerController < ApplicationController
  layout 'template_listpage.html.erb'
  
  def index
    @comps = Comp.all
    @areas = ['化学系','土木・建築系','電気系','機械系','情報系']
  end

  def show
    @comp = Comp.find_by!(name: params[:name])
    @areas = ['化学系','土木・建築系','電気系','機械系','情報系']
  end
end
