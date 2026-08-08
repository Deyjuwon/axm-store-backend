class Api::ProtectedController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: {
      message: "You are authenticated!",
      user: current_user.email
    }
  end
end
