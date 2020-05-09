class AddNewsController < ApplicationController
  layout 'template_listpage.html.erb'
  
  def index
    @news = News.all.order(date: :desc)
  end

  def show 
    @news_name = params[:title]
    upload_file = params[:upload]
    @news_content = if !upload_file.nil?
      upload_file.read.force_encoding("UTF-8")
    else
      nil
    end
    @dummy = params[:dummy] != "0"

    
    if !params[:preview]
      case params[:upload_type]
      when "new"
        if !@news_content.nil?
          News.create(name: @news_name, content: @news_content, date: Date.today)
          redirect_to action: :index
        else
          redirect_to action: :index, notice: "ファイルを指定してください"
        end
      when "upload"
        news = News.find_by(id: params[:news_id].to_i)
        news.inspect
        if !@news_content.nil?
          news.update(name: @news_name, content: @news_content, date: Date.today)
        else
          news.update!(name: @news_name, date: Date.today)
        end
        redirect_to action: :index
      when "disable"
        news = News.find_by(id: params[:news_id].to_i)
        news.destroy
        redirect_to action: :index
      end
    elsif @news_content.nil?
      redirect_to action: :index, notice: "ファイルを指定してください"
    end
  end

end