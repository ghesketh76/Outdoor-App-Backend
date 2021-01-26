class ActivitiesController < ApplicationController

    def index 
        @activities = Activity.all 
        render json: @activities, include: [:users, :ratings]
    end

    def show 
        @activity = Activity.find(params[:id])
        render json: @activity, include: [:users, :ratings]
    end

    def create 
        Activity.create(
            name: params[:name],
            description: params[:description],
            equipment: params[:equipment],
            picture: params[:picture]
        )
    end

    def destroy 
        @activity = Activity.find(params[:id])
        @activity.destroy
    end
end
