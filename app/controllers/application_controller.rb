class ApplicationController < ActionController::Base
before_action :set_current_user
IS_READY = FALSE

    def set_current_user
      @current_user = User.find_by(id: session[:user_id])
    end

    def authenticate_user
      if @current_user == nil
        flash[:notice] = "ログインが必要です"
        redirect_to("/login")
      end
    end

    def forbid_login_user
      if @current_user
        flash[:notice]="すでにログインしています"
        redirect_to("/")
      end
    end
    
    def ensure_correct_user
      if @current_user.id != params[:id].to_i
        redirect_to("/")
      end
    end

    def check_is_ready
      if !IS_READY
        redirect_to("/coming_soon")
      end
    end
end
