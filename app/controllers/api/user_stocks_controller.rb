class UserStocksController < ApplicationController
  before_action :set_user_stock, only: %i[ show edit update destroy ]

  # GET /user_stocks or /user_stocks.json
  def index
    @user_stocks = UserStock.all
  end

  # GET /user_stocks/1 or /user_stocks/1.json
  def show
  end

  # GET /user_stocks/new
  def new
    @user_stock = UserStock.new
  end

  # GET /user_stocks/1/edit
  def edit
  end

  # POST /user_stocks or /user_stocks.json
  def create
    @user_stock = UserStock.new(user_stock_params)

    respond_to do |format|
      if @user_stock.save
        format.html { redirect_to user_stock_url(@user_stock), notice: "User stock was successfully created." }
        format.json { render :show, status: :created, location: @user_stock }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_stocks/1 or /user_stocks/1.json
  def update
    respond_to do |format|
      if @user_stock.update(user_stock_params)
        format.html { redirect_to user_stock_url(@user_stock), notice: "User stock was successfully updated." }
        format.json { render :show, status: :ok, location: @user_stock }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_stocks/1 or /user_stocks/1.json
  def destroy
    @user_stock.destroy!

    respond_to do |format|
      format.html { redirect_to user_stocks_url, notice: "User stock was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_stock
      @user_stock = UserStock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_stock_params
      params.fetch(:user_stock, {})
    end
end
