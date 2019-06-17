class TransferController < ApplicationController
  layout 'basic.html.erb'
  
  def index
    @univs = Univ.all
  end

  def show
    @univ = Univ.find(params[:id])
  end
end
