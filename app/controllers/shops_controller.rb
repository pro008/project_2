class ShopsController < ApplicationController
  before_action :set_shop, only:[:show, :edit, :update]
  skip_before_action :verify_authenticity_token

    
    def index
      @shops = Shop.page(params[:page])
    end
    
    def show
    end
    
    def create
       @shop = Shop.new(shop_params) 
       @shop.save
       
    end
    
    def update
        # @shop.update(shop_params)
         @shop = Shop.find(params[:id])
         if @shop.update(shop_params)
             flash[:success] = "Your account was updated successfully"
         end
    end
   
    
    def destroy
       set_shop.destroy
    end
    
    
    def set_shop
       @shop = Shop.find(params[:id]) 
    end
    
    def shop_params
       params.permit(:name, :description, :shop_profile_ids) 
    end
end