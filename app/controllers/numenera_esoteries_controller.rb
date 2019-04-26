class NumeneraEsoteriesController < ApplicationController
    before_action :current_numenera_esotery, only: %i[show edit update destroy]
    def show; end
  
    def edit; end
  
    def update
      @numenera_esotery.update(numenera_esotery_params)
  
      redirect_to show_numenera_character_path(@numenera_esotery.numenera_character_id)
    end
  
    def new
      @numenera_esotery = NumeneraEsotery.new
    end
  
    def create
      @numenera_esotery = NumeneraEsotery.new(numenera_esotery_params)
  
      @numenera_esotery.save
      redirect_to show_numenera_character_path(@numenera_esotery.numenera_character_id)
    end
  
    def destroy
      @numenera_esotery.destroy
      redirect_to show_numenera_character_path(@numenera_esotery.numenera_character_id)
    end
  
    private
  
    def numenera_esotery_params
      params.require(:numenera_esotery).permit(:esotery_name, :esotery_discription, :esotery_cost, :numenera_character_id)
    end
  
    def current_numenera_esotery
      @numenera_esotery = NumeneraEsotery.find(params[:id])
    end
end
