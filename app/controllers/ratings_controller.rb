class RatingsController < ApplicationController

    def index 
        @ratings = Rating.all 
        render json: @ratings, include: [:user, :activity]
    end

    def show 
        @rating = Rating.find(params[:id])
        render json: @rating, include: [:user, :activity]
    end

    def create 
        Rating.create(
            rating: params[:rating], 
            user_id: params[:user_id], 
            activity_id: params[:activity_id]
            )
    end
end
