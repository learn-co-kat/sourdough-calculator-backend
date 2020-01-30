class BakesController < ApplicationController
    belongs_to: user
    has_many: notes

    private

    def bake_params
        params.require(:bake).permit(:id, :user_id, :total_flour_g, :total_flour_p, :water_g, :water_p, :salt_g, :salt_p, :leaven_g, :leaven_p, :hydration, :rating, :name, :date)
    end
end
