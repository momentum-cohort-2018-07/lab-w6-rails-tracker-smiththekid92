class Api::V1::CharactersController < ApplicationController
    # GET /character
    # GET /character.json
    def index
      @character = Character.all
      render json: @character
    end
  
    # GET /character/1
    # GET /character/1.json
    def show
      @character = Character.all
      render json: @character
    end
  
    # POST /character
    # POST /character.json
    def create
      @character = Character.new(character_params)
  
      if @character.save
        render json: @character
      else
        render json: @character.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /character/1
    # PATCH/PUT /character/1.json
    def update
      if @character.update(character_params)
        render :show, status: :ok, location: @character
      else
        render json: @character.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /character/1
    # DELETE /character/1.json
    def destroy
      @character.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_character
        @character = Character.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def character_params
        params.permit(:name, :species, :planet_origin, :occupation)
      end

end
