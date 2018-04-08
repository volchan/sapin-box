class SoundsController < ApplicationController
  before_action :set_sound, only: %I[edit update destroy]

  def new
    authorize @sound = Sound.new
  end

  def create
    authorize @sound = current_user.sounds.new(sound_params)
    if @sound.save
      flash[:notice] = "#{@sound.title.capitalize} créer avec succès."
      redirect_to soundboard_sounds_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @sound.update(sound_params)
      flash[:notice] = "#{@sound.title.capitalize} mis à jour avec succès."
      redirect_to soundboard_sounds_path
    else
      render :edit
    end
  end

  def destroy
    if @sound.destroy
      flash[:notice] = "#{@sound.title.capitalize} supprimé succès."
    else
      flash[:alert] = "Impossible de supprimé #{@sound.title.capitalize}."
    end
    redirect_to soundboard_sounds_path
  end

  private

  def set_sound
    authorize @sound = Sound.find(params[:id])
  end

  def sound_params
    params.require(:sound).permit(:title, :category, :file)
  end
end
