# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_choreminder_session',
  :secret      => '25d08a067a8a0498df02a7a98ca21fd0ec7ff04bd052c73422ed4bd2dbe3a1c5a18b07b8573c334dfe8f49ff47a1529e0b9f1e8fa376bd4427782400be79dd32'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
