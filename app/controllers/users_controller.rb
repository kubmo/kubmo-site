class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if user.save
      Notifier.send_signup_email(@user).deliver
      redirect_to(@user, notice: 'User Created')
    else
      render action: 'new'
    end
  end
end
