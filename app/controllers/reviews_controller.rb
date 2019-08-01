class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :edit, :update, :destroy]

      def index
        @reviews = Review.all
      end

      def show
      end

      def new
        @review = Review.new

      end

      def create
        if @current_user
          @review = @current_user.reviews.create(review_params)

          if @review.valid?
            redirect_to review_path(@review)
          else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
          end
        else
          flash["message"] = "Please create account first"
          redirect_to new_login_path
        end
      end

      def edit

      end

      def update
        @review.update(review_params)
        if @review.valid?
        redirect_to review_path(@review)
       else
        flash[:errors] = @review.errors.full_messages
        redirect_to new_review_path
       end
      end

      def destroy
        @review.destroy
        redirect_to reviews_path
      end


      private
      def find_review
       @review = Review.find(params[:id])
      end

      def review_params
        params.require(:review).permit(:name, :user_id)
      end
end
