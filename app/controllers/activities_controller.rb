class ActivitiesController < ApplicationController

    def index 
        if params[:search]
            @activities = Activity.where('name LIKE ?', "%#{params[:search]}%")
        else
            @activities = Activity.all 
        end
        render json: @activities, include: [:ratings]
    end

    def show 
        @activity = Activity.find(params[:id])
        render json: @activity, include: [:ratings]
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
    
    def trending_activities 
        @activities = Activity.all.select do |activity|
            activity.ratings.length >= 3
        end
        render json: @activities, include: [:ratings]
    end
end
