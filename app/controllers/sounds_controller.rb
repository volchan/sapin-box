class SoundsController < ApplicationController
  def new
    authorize @sound = Sound.new
  end

  def create; end

  def edit; end

  def update; end

  def destroy; end
end
