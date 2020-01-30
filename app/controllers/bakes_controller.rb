class BakesController < ApplicationController

    def index
        bakes = Bake.all
        render json: bakes
      end 

    def show
        bake = Bake.find_by(id: params[:id])
        render json: bake
    end 
    
    def create
        bake = Bake.create(bake_params)
        render json: bake
    end

    def update
        bake = Bake.find_by(params[:id])
        render json: bake
    end 

    def destroy
        data = {message: "Bake has been deleted"}
        bake = Bake.find(params[:id])
        bake.delete()
        render json: data 
    end 

    private

    def bake_params
        params.require(:bake).permit(:id, :user_id, :total_flour_g, :total_flour_p, :water_g, :water_p, :salt_g, :salt_p, :leaven_g, :leaven_p, :hydration, :rating, :name, :date)
    end
end
