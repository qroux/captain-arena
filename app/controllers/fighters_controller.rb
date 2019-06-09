class FightersController < ApplicationController
  def index
    @fighters = Fighter.all
  end

  def new
    @fighter = Fighter.new
  end

  def create
    @fighter = Fighter.new(fighter_params)
    @fighter.name = @fighter.name.downcase.capitalize
    if @fighter.save
      redirect_to fighters_path
    else
      render :new
    end
  end

  def edit
    @fighter = Fighter.find(params[:id])
  end

  def update
    @fighter = Fighter.find(params[:id])
    @fighter.update(fighter_params)
    if @fighter.save
      redirect_to fighters_path
    else
      render :edit
    end
  end

  private

  def fighter_params
    params.require(:fighter).permit(:name, :health, :power)
  end
end