class FeedbacksController < ApplicationController
	before_action :set_feedback, only:[:show, :edit, :update]
  skip_before_action :verify_authenticity_token

    
    def index
      @feedbacks = Feedback.order(created_at: :desc).page(params[:page])
      @page  = Feedback.order(created_at: :desc).page(params[:page]).total_pages
      puts(@page)
    end
    
    def show
    end
    
    def create
       @feedback = Feedback.new(feedback_params) 
       @feedback.save
       
    end
    
    def update
        # @feedback.update(feedback_params)
         @feedback = Feedback.find(params[:id])
         if @feedback.update(feedback_params)
             flash[:success] = "Your account was updated successfully"
         end
    end
   
    
    def destroy
       set_feedback.destroy
    end
    
    private
        def set_feedback
           @feedback = Feedback.find(params[:id]) 
        end
        
        def feedback_params
           params.permit(:user_id, :review, :comment) 
        end
end