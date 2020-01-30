class UsersController < ApplicationController

    def create
        user = User.find_by(email: params[:email])
        if (!user)
            user = User.create(email: params[:email])
        end
        render json: user
    end 

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end 

    def index
        users = User.all
        render json: users 
    end 

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        data = {message: "User has been deleted"}
        user = User.find(params[:id])
        user.delete()
        render json: data 
    end

    private

    def user_params
        params.require(:user).permit(:id, :email, :password)
    end
end
