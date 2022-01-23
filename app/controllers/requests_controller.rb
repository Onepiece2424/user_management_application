class RequestsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
    @user = User.find(params[:user_id])
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to user_requests_path
    end
  end

  def show
    @request = Request.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def edit
    @request = Request.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    redirect_to user_request_path
  end

  private
  def request_params
    params.require(:request).permit(:requesting, :who, :whom, :deadline)
  end
end
