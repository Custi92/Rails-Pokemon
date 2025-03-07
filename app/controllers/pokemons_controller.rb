class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
    if params[:query].present?
      @pokemons = @pokemons.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @pokeball = Pokeball.new
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :element_type, :search)
  end
end
