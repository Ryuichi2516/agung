class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_path(current_user)
    else
      user_path(current_user) # ログイン後に遷移するpathを設定
    end
  end

  def after_sign_out_path_for(resource)
    logout_path # ログアウト後に遷移するpathを設定
  end
end
