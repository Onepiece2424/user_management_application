class ExplainsController < ApplicationController
  before_action :set_explain, :only => %i[ show edit update destroy ]

  def index
    @user = User.where(:id => params[:user_id]).first
    @explains = Explain.all
  end

  def new
    @user = User.find(params[:user_id])
    @explain = Explain.new
  end

  def create
    @explain = Explain.new(explain_params)
    @user = User.find(params[:user_id])

    respond_to do |format|
      if @explain.save
        format.html { redirect_to user_explains_path(@user, @explain), :notice => "Explain was successfully created." }
        format.json { render :show, :status => :created, :location => @explain }
      else
        format.html { render :new, :status => :unprocessable_entity }
        format.json { render :json => @explain.errors, :status => :unprocessable_entity }
      end
    end
  end

  def show
    @user = User.where(:id => params[:user_id]).first
    @explain = Explain.find(params[:id])
  end

  def edit
    @user = User.where(:id => params[:user_id]).first
    @explain = Explain.find(params[:id])
  end

  def update
    @explain = Explain.new(explain_params)
    @user = User.find(params[:user_id])
    respond_to do |format|
      if @explain.update(explain_params)
        format.html { redirect_to user_explain_path(@user, @explain), :notice => "Explain was successfully updated." }
        format.json { render :show, :status => :ok, :location => @explain }
      else
        format.html { render :edit, :status => :unprocessable_entity }
        format.json { render :json => @explain.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @explain.destroy

    respond_to do |format|
      format.html { redirect_to user_explains_url, :notice => "Explain was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_explain
      @explain = Explain.find(params[:id])
    end

    def explain_params
      params.require(:explain).permit(:title, :precedure1, :image1, :precedure2, :image2, :precedure3, :image3,{ :img => [] })
    end
end
