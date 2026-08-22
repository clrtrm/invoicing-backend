# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json

  skip_before_action :verify_signed_out_user, only: :destroy

  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    render json: { user: { id: resource.id, email: resource.email } }, status: :ok
  end

  def destroy
    render json: {}, status: :no_content
  end
end
