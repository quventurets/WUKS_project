class EventController < ApplicationController
  layout 'template_listpage.html.erb'

  def index
    #デフォルトはイベント日時の新しい順に並べる
    @events = Event.all.order(date: :desc)
  end

  def show
    @event = Event.find_by(name: params[:name])
  end
  
end