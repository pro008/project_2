class UsersController < ApplicationController
	before_action :set_user, only:[:show, :edit, :update]
  skip_before_action :verify_authenticity_token

    
    def index
      @users = User.order(created_at: :desc).page(params[:page])
      @page  = User.order(created_at: :desc).page(params[:page]).total_pages
      puts(@page)
    end
    
    def show
    end
    
    def create
       @user = User.new(user_params) 
       @user.save
       
    end
    
    def update
        # @user.update(user_params)
         @user = User.find(params[:id])
         if @user.update(user_params)
             flash[:success] = "Your account was updated successfully"
         end
    end
   
    
    def destroy
       set_user.destroy
    end
    
    private
        def set_user
           @user = User.find(params[:id]) 
        end
        
        def user_params
           params.permit(:email, :password, :fb_id, :gg_id, :username) 
        end
end