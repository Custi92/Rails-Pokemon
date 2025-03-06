class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.search(params[:search])
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
