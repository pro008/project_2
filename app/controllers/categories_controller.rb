class CategoriesController < ApplicationController
	before_action :set_category, only:[:show, :edit, :update]
  skip_before_action :verify_authenticity_token

    
    def index
      @categories = Category.order(created_at: :desc).page(params[:page])
      @page  = Category.order(created_at: :desc).page(params[:page]).total_pages
      puts(@page)
    end
    
    def show
    end
    
    def create
       @category = Category.new(category_params) 
       @category.save
       
    end
    
    def update
        # @category.update(category_params)
         @category = Category.find(params[:id])
         if @category.update(category_params)
             flash[:success] = "Your account was updated successfully"
         end
    end
   
    
    def destroy
       set_category.destroy
    end
    
    private
        def set_category
           @category = Category.find(params[:id]) 
        end
        
        def category_params
           params.permit(:category_name) 
        end
end