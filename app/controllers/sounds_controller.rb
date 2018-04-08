class SoundsController < ApplicationController
  def new
    authorize @sound = Sound.new
  end

  def create
    authorize @sound = current_user.sounds.new(sound_params)
    return redirect_to soundboard_sounds_path if @sound.save
    render :new
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def sound_params
    params.require(:sound).permit(:title, :category, :file)
  end
end
