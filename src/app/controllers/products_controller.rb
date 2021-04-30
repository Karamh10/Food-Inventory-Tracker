class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @user = params[:user_id] ? User.find(params[:user_id]) : current_user
    
  end

  def home
    @products = Product.all
  end
  # GET /products/1
  # GET /products/1.json
  def show
    @products = Product.all
    @num 
  end 

  # GET /products/new
  def new
    @product = current_user.products.build
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    #@product = Product.new(product_params)
    @product = current_user.products.build(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def correct_user
    @product = current_user.products.find_by(id: params[:id])
    redirect_to products_path, notice: "You Are Not Authorized To Perform This Action!" if @product.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:Organization, :Date, :PO_Number, :Invoice_Number, :Invoice_Date, :Product, :Quantity_Units, :Quantity, :Value, :Weight, :user_id)
    end
end
