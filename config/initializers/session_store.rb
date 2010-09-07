# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blog_session',
  :secret      => 'd0cffb0d976f9a1c10bc798eea5eb9e650bf9b43ceac511a4d2ceb49b015ae48f7515c3c3ecb7c2104338869f348414d7f4f02e48bc2b1da0a182d4254b584d2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
