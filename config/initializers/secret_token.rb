# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end



SampleApp::Application.config.secret_key_base = '88cf8f2f910aa402b30f81db0551b40d95141dfe4ebfa1eb4ddd5455befbadc3b9c09bb78e8bb6f1814f502915cf3efea51298ff1a01288f7980e5ab11cddd02'
