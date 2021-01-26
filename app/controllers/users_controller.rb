class UsersController < ApplicationController

    def index 
        @users = User.all 
        render json: @users, include: [:activities, :ratings]
    end

    def show 
        @user = User.find(params[:id])
        render json: @user, include: [:activities, :ratings]
    end

    def create 
        User.create(
            name: params[:name],
            age: params[:age],
            location: params[:location]
        )
    end

    def destroy 
        @user = User.find(params[:id])
        @user.destroy
    end
end
