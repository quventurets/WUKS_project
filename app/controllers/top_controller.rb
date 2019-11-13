class TopController < ApplicationController
  layout 'template_top.html.erb'
  before_action :kill_session_message
  
  def index
    #TOPには日時の新しいイベントから4つだけ表示する
    @events = Event.all.order(date: :desc).limit(3)
    #TOPには日時の新しいニュースから10個だけ表示する
    @news = News.all.order(date: :desc).limit(10)
  end
end
