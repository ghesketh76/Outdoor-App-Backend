class RatingsController < ApplicationController

    def index 
        @ratings = Rating.all 
        render json: @ratings, include: :activity
    end

    def show 
        @rating = Rating.find(params[:id])
        render json: @rating, include: :activity
    end

    def create 
        Rating.create(rating: params[:rating], activity_id: params[:activity_id])
    end
end
