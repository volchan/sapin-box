module Soundboard
  class SoundsController < ApplicationController
    def index
      @sounds = policy_scope(Sound.includes(:user).all)
    end
  end
end
