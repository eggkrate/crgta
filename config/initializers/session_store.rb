# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_crgta_session',
  :secret      => '417a00e892409a7de84727e38ceffcf2758980a480751bbb85bbfa0b0007d75ef269569bd76f6c7d97ecb60ed6c8762ca9a286174d939593c836391175db072a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
