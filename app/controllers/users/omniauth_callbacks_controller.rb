class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :redirect_unless_signed_in

  def google_oauth2
    @user = User.find_for_google(request.env['omniauth.auth'])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end

