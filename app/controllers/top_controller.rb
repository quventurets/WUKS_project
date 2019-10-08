class TopController < ApplicationController
  layout 'template_top.html.erb'
  
  def index
    #TOPには日時の新しいものから4つだけ表示する
    @events = Event.all.order(date: :desc).limit(4)
  end
end
