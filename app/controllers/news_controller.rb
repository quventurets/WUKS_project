class NewsController < ApplicationController
    layout 'template_listpage.html.erb'
    
    def index
        @news = News.all.order(date: :desc)
    end
end
