class ProductSettingsController < ApplicationController
  before_action :set_product, only:[:show, :edit, :update]
  skip_before_action :verify_authenticity_token

    
    def index
      @products = ProductSetting.page(params[:page])
    end
    
    def show
    end
    
    def create
       @product = ProductSetting.new(product_params) 
       @product.save
       
    end
    
    def update
        # @product.update(product_params)
         @product = ProductSetting.find(params[:id])
         if @product.update(product_params)
             flash[:success] = "Your account was updated successfully"
         end
    end
   
    
    def destroy
       set_product.destroy
    end
    
    
    def set_product
       @product = ProductSetting.find(params[:id]) 
    end
    
    def product_params
       params.permit(:name, :description, :price, :status) 
    end
end