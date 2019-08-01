class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :edit, :update, :destroy]

      def index
        @reviews = Review.all
      end

      def show
      end

      def new
        @review = Review.new
        @user = User.find(params[:user_id])
        @developer = Developer.find(params[:developer_id])
      end

      def create
        @user = User.find(review_params[:user_id])
        @developer = Developer.find(review_params[:developer_id])
        @review = Review.create(user_id: review_params[:user_id], developer_id: review_params[:developer_id])

        redirect_to developer_path(@developer)
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
        params.require(:review).permit(:content, :user_id, :developer_id)
      end
end
