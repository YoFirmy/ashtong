class AccountsController < ApplicationController
  before_action :require_user_logged_in!
  
  def index
  end

  def edit
  end

  def update
    if Current.user.update(account_params)
      redirect_to account_path, notice: "Account info updated."
    else
      render :edit
    end
  end

  private

  def account_params
    params.require(:user).permit(:name, :address, :phone_number)
  end
end