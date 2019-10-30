class CareerController < ApplicationController
  layout 'template_listpage.html.erb'
  
  def index
    @comps = Comp.all
  end

  def show
    @comp = Comp.find_by!(name: params[:name])
  end
end
