class ExplainsController < ApplicationController
  before_action :set_explain, only: %i[ show edit update destroy ]

  # GET /explains or /explains.json
  def index
    # @explains = Explain.all
    @user = User.where(:id => params[:user_id]).first
    @explains = @user.explains.all
  end

  # GET /explains/1 or /explains/1.json
  def show

  end

  # GET /explains/new
  def new
    @explain = Explain.new
    @user = User.find(params[:user_id])
  end

  # GET /explains/1/edit
  def edit
  end

  # POST /explains or /explains.json
  def create
    @explain = Explain.new(explain_params)

    respond_to do |format|
      if @explain.save
        format.html { redirect_to explain_url(@explain), notice: "Explain was successfully created." }
        format.json { render :show, status: :created, location: @explain }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @explain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /explains/1 or /explains/1.json
  def update
    respond_to do |format|
      if @explain.update(explain_params)
        format.html { redirect_to explain_url(@explain), notice: "Explain was successfully updated." }
        format.json { render :show, status: :ok, location: @explain }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @explain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explains/1 or /explains/1.json
  def destroy
    @explain.destroy

    respond_to do |format|
      format.html { redirect_to explains_url, notice: "Explain was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_explain
      @explain = Explain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def explain_params
      params.require(:explain).permit(:title, :precedure1, :image1, :precedure2, :image2, :precedure3, :image3)
    end
end
