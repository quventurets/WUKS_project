class NewsController < ApplicationController
    layout 'template_listpage.html.erb'
    
    def index
        @news = News.all
    end
end
