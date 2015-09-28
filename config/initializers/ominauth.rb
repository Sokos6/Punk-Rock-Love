Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :facebook, "760794620732491", "805470b3eacb2a32849b683df0194130", { :scope => 'user_location, user_birthday, user_about_me, email'}
end

