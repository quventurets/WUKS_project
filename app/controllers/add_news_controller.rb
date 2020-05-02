class AddNewsController < ApplicationController
  layout 'template_listpage.html.erb'
  
  def index
  end

  def show 
    name = params[:title]
    upload_file = params[:upload]
    if !upload_file.nil?
      @news_name = name
      @news_content = upload_file.read.force_encoding("UTF-8")
      if !params[:preview]
        News.create(name: @news_name, content: @news_content, date: Date.today)
        render :index
      end
    else
      redirect_to action: index, notice: "ファイルを指定してください"
    end
  end

end