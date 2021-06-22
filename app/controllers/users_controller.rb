class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end

    raise
  end

  private

  def user_params
    params.require(:user).permit(:email, :address, :company_name, :user_name, :phone_number, :business_activity)
  end
end
