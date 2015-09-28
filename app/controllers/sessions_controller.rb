class SessionsController < ApplicationController

	def create
		auth = request.env["omniauth.auth"]
		session[:omniauth] = auth
		user = User.sign_in_from_facebook(auth)
		session[:users_id] = user.id
		redirect_to root_url, notice: "Signed In"
	end

	def destory
		session[:users_id] = nil
		session[:omniauth] = nil
		redirect_to root_url, notice: "Signed Out"
	end

end
