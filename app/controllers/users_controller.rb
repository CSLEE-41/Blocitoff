class UsersController < ApplicationController
  def show
    @user = current_user.name
  end
end