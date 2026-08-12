class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(current_user, _opts = {})
    render json: {
      status: {
        code: 200,
        message: "Logged in successfully."
      },
      user: {
          id: current_user.id,
          email: current_user.email
        }
    }, status: :ok
  end

  def respond_to_on_destroy(_resource)
    render json: {
      status: {
        code: 200,
        message: "Logged out successfully."
      }
    }, status: :ok
  end
end
