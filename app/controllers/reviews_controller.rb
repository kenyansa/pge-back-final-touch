
class ReviewsController < ApplicationController
    before_action :authenticate

    # POST /reviews
    def create
        reviews = current_user.reviews.new(review_params)
        if reviews.save
            render json: review
        else
            render json: { error: "Review not found" }, status: 422
        end
    end

    # PATCH/PUT /reviews/:id
    def update
        review = current_user.reviews.find(params[:id])
        if review.update(review_params)
            render json: review
        else
            render json: { error: "Review not found" }, status: 422
        end
    end

    # DELETE /reviews/:id
    def destroy
        review = current_user.reviews.find(params[:id])
        if  review.destroy
            head :no_content
        else
            render json: { error: "Review not found" }, status: 422
        end
    end

    private

    #strong params

    def review_params
        params.require(:review).permit(:title, :description, :score, :project_id)
    end

end