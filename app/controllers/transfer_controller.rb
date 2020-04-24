class TransferController < ApplicationController
  layout 'template_listpage.html.erb'
  
  Attributes = [
    ["examtypes", "0"],
    ["otherFac", "0"],

    ["hokkaido", "1"],
    ["tohoku", "1"],
    ["hokuriku", "1"],
    ["chubu", "1"],
    ["kanto", "1"],
    ["kinki", "1"],
    ["chugoku", "1"],
    ["sikoku", "1"],
    ["kyushu", "1"],

    ["math", "1"],
    ["english", "1"],
    ["physics", "1"],
    ["chemistry", "1"],
    ["special", "1"],
    ["external_english", "1"],
    ["other_subject", "1"],

    ["engineering", "1"],
    ["science_and_engineering", "1"],
    ["science", "1"],
    ["economics", "1"],
    ["law", "1"],
    ["literature", "1"],
    ["other_faculty_type", "1"],

    ["order_by", "id"],
    ["order", "ASC"]
  ]

  def index

    @departments = Department.filter(params)
    @facluties = Faculty.filter(params, @departments)
    @univs = Univ.filter(params, @facluties, @departments)

    @filtered = Attributes.map{|attribute, default| !(params[attribute].nil? || params[attribute] == default)}.any?
  end

  def show
    @univ = Univ.find_by!(name: params[:name])
    @faculties = Faculty.where(s_name: params[:name])
  end
end
