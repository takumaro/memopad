class TopController < ApplicationController
  def index
    redirect_to controller: :memopads, action: :index
  end
end
