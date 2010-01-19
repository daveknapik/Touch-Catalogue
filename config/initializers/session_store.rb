# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_TouchCatalogue_session',
  :secret      => '6b2dd8988183826129b3bd9fb247fbf5bf06b7a3b2abfc3fa9d00acf886d13ceab764116a368ce1ef005c152c58364832d5104027964284282e9f1b1bc64a2a7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
