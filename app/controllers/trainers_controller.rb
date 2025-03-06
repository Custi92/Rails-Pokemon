class TrainersController < ApplicationController

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)
  end

  private

  def trainer_params
    params.require(:trainer).permit(:name, :age, :photo)
  end
end
