class UsersController < ApplicationController
  def index
    @users = User.all
    @requests = Request.all
  end

  def new
    @user = User.new
  end

  def create
  end

  def show
    # @user = User.find(params[:id])
  end
end
