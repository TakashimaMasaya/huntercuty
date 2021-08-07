class UserSessionsController < ApplicationController
  def new
  end

  def create
    @user = login(params[:email], params[:password], params[:remember_me])

    if @user
      redirect_back_or_to quests_path, success: 'ログインしました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, success: 'ログアウトしました'
  end

end
