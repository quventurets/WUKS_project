class TransferController < ApplicationController
  layout 'template_listpage.html.erb'
  
  def index

    @departments = Department.filter(params)
    @univs = Univ.filter(params, @departments)
    @facluties = Faculty.filter(params, @departments)
   

    @filtered = [
      "examtypes", 
      "otherFac", 
      "hokkaido", 
      "tohoku", 
      "hokuriku", 
      "chubu", 
      "kanto", 
      "kinki", 
      "chugoku", 
      "sikoku", 
      "kyushu", 
      "order_by", 
      "order"
    ].map{|attribute| params[attribute]}.any?
    
  end

  def show
    @univ = Univ.find_by!(name: params[:name])
    @facluties = Faculty.where(s_name: params[:name])
  end
end
