# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_proceedings_session',
  :secret      => 'd3c67d43417d337f5e43d00f459ea5ac9b40dcd2a46555d8b7f4dcc13d3fe6c71658f1fcec3b124556ae7b97f6e7c89d40ed91bc20bc17237be48adc2b1a9f41'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
