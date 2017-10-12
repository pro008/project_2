class DemosController < ApplicationController
	before_action :set_demo, only:[ :edit, :update]
  skip_before_action :verify_authenticity_token

    
    def index
      @demos = Demo.page(params[:page])
    end
    
    def show
      @demo = [Demo.find(params[:id])]
    end
    
    def create
       @demo = Demo.new(demo_params) 
       @demo.save
       
    end
    
    def update
        # @demo.update(demo_params)
         @demo = Demo.find(params[:id])
         if @demo.update(demo_params)
             flash[:success] = "Your account was updated successfully"
         end
    end
   
    
    def destroy
       set_demo.destroy
    end
    
    
    def set_demo
       @demo = Demo.find(params[:id]) 
    end
    
    def demo_params
       params.permit(:name) 
    end
end