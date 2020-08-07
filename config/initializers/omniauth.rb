Rails.application.config.middleware.use OmniAuth::Builder do
	provider :spotify, "a6d95bf79df64eceac6d491fa9df7505", "d179ee43a5284c8c82a19f32b887fb7b", scope: 'user-read-email'
end


# Rails.application.config.middleware.use OmniAuth::Builder do
#     provider :spotify, Rails.application.credentials.spotify[:client_id], Rails.application.credentials.spotify[:client_secret], scope: %w(
#       playlist-read-private
#       user-read-private
#       user-read-email
#     ).join(' ')
# end

# config.omniauth :spotify, Rails.application.credentials.spotify[:client_id], Rails.application.credentials.spotify[:client_secret], scope: %w(
#   playlist-read-private
#   user-read-private
#   user-read-email
# ).join(' ')