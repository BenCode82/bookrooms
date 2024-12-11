class UsersController < ApplicationController
  def show
    raise
    @user = current_user
  end
end
