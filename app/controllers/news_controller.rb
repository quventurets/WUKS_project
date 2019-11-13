class NewsController < ApplicationController
    layout 'template_listpage.html.erb'
    before_action :kill_session_message
    
    def index
        @news = News.all.order(date: :desc)
    end

    def show
        @news = News.find_by!(id: params[:id])
      end
end
