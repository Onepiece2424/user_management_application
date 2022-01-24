class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: %i[ show edit update destroy ]
  def index
    @user = User.where(:id => params[:user_id]).first
    @requests = Request.all
  end

  def new
    @user = User.find(params[:user_id])
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
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
    redirect_to user_requests_path
  end

  private
  def request_params
    params.require(:request).permit(:requesting, :who, :whom, :deadline)
  end

  def set_request
    @request = Request.find(params[:id])
    @user = User.find(params[:user_id])
  end
end
