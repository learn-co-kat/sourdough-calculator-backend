class BakesController < ApplicationController

    def index
        bakes = Bake.all
        render json: bakes
      end 

    def show
        Bake = Bake.find_by(id: params[:id])
        render json: Bake
    end 
    
      def create
        Bake = Bake.create(Bake_params)
        render json: Bake
      end
    
      def update
        Bake = Bake.find_by(params[:id])
        render json: Bake
      end 
    
      def destroy
        data = {message: "Bake has been deleted"}
        Bake = Bake.find(params[:id])
        Bake.delete()
        render json: data 
      end 

    private

    def bake_params
        params.require(:bake).permit(:id, :user_id, :total_flour_g, :total_flour_p, :water_g, :water_p, :salt_g, :salt_p, :leaven_g, :leaven_p, :hydration, :rating, :name, :date)
    end
end
