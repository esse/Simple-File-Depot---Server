# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_filozofia_session',
  :secret      => '96179a079474c9e24949de4ee0e4a8365d536ba19b1fbde02e3e03e7d578e0263929c6402971cb413d583f263bc2e29cfc43a952f6ca8273b470762f6f601e17'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
