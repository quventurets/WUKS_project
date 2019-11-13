class LoginController < ApplicationController
    layout 'template_top.html.erb'

    before_action :forbid_login_user,{only: [:new,:create,:login_form,:login]}
    before_action :authenticate_user,{only: [:show]}
    before_action :ensure_correct_user,{only: [:show]}
    before_action :check_is_ready

    def show
      @user = User.find_by!(id: params[:id])
      @kosen = Kosen.all
      @message = session[:message]
    end

    def update
      @user = User.find_by!(id: params[:id])
      @user.name = params[:name]
      @user.kosen_id = params[:kosen_id]
      @user.area = params[:area]
      @user.future = params[:future]
      
      if @user.save
        session[:message] = "変更を反映しました。"
        redirect_to("/login/#{@user.id}")
      else
        session[:message] = "名前が未設定の状態では保存できません。"
        redirect_to("/login/#{@user.id}")
      end
    end

    def login_form
    end
    
    def create
       #OAuth認証で得られたデータをUserテーブルに追加する(from_omniauthメソッドはuser.rbに書いてある)
      @user = User.from_omniauth(request.env["omniauth.auth"])
      if @user.save
        session[:user_id] = @user.id
        redirect_to("/")
      else
        @error_message = "※Googleとの連携に失敗しました"
        render("/login")
      end
    end
    
    def logout
      session[:user_id] = nil
      redirect_to("/login")
    end

end
