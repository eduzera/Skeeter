# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Skeeter_session',
  :secret      => '531776efb59401e552510795ae430f8cc38305657f007cb884c94dbef25b924648a722a53bfc669d9d3b598daa399cca08fbb6cdc30abc7612f61d94e641d568'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
