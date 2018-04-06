class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    return redirect_to soundboard_sounds_path if user_signed_in?
    render layout: 'landing'
  end
end
