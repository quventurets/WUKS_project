class TransferController < ApplicationController
  layout 'template_listpage.html.erb'
  
  def index
    @univs = Univ.all
  end

  def show
    @univ = Univ.find_by(name: params[:name])
    @facluties = Faculty.where(s_name: params[:name])
  end
end
