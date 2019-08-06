class CareerController < ApplicationController
  layout 'template_listpage.html.erb'
  
  def index
    @comps = Comp.all
  end

  def show
    @comp = Comp.find(params[:id])
  end
end
