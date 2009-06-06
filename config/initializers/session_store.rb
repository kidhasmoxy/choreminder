# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_choreminder_session',
  :secret      => 'e2ea4c7363c0b13fbcacbb2ba1ccf964bc7f748f0b3a1eba1ee92ae19d9a0048349741ca3582b267a82baaaea5be71a6eb5dbc74b78267b095f9a342e6bb411a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
