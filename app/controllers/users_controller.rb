class UsersController < ApplicationController
    has_many: bakes

    def create
        user = User.find_by(email: params[:email])
        if (!user)
            user = User.create(email: params[:email])
        end
        render json: user
    end 

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy 
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:id, :email, :password)
    end
end
