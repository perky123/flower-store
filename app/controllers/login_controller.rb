class LoginController < ApplicationController
  def index
    render :layout => 'special_layout'
  end

  def verify
    if params[:name]=="admin" && params[:password]=="admin"
      redirect_to rails_admin_path
    else
      flash[:notice]="登录失败!"
      redirect_to "/login"
    end
  end
end
