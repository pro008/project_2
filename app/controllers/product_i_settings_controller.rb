class ProductISettingsController < ApplicationController
  before_action :set_product, only:[:show, :edit, :update]
  skip_before_action :verify_authenticity_token

    
    def index
      @products = ProductISetting.page(params[:page])
    end
    
    def show
    end
    
    def create
       @product = ProductISetting.new(product_params) 
       @product.save
       
    end
    
    def update
        # @product.update(product_params)
         @product = ProductISetting.find(params[:id])
         if @product.update(product_params)
             flash[:success] = "Your account was updated successfully"
         end
    end
   
    
    def destroy
       set_product.destroy
    end
    
    
    def set_product
       @product = ProductISetting.find(params[:id]) 
    end
    
    def product_params
       params.permit(:product_id, :product_setting_id) 
    end
end