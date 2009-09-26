# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nanowrimo_session',
  :secret      => 'ff54b4d5938027a22dc32303e6c83b601b2efabfcc6f40d6a23682c674f4d989d1067f1ceb58988d3b650bf1568264ee45c9778f58f3f0558d9170cb8759c81e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
