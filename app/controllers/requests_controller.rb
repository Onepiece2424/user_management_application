class RequestsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create

  end

  def show
    # @request = Request.find(params[:id])
  end

  def edit
  end

  def delete
  end
end
