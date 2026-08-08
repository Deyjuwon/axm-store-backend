class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    user = User.new(sign_up_params)

    if user.save
      render json: {
        status: {
          code: 201,
          message: "Signed up successfully."
        },
        user: user
      }, status: :created
    else
      render json: {
        status: {
          message: "User could not be created."
        },
        errors: user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation
    )
  end
end
