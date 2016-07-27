require 'active_record'

# connect to database
options = {
  adapter: 'postgresql',
  database: 'guestbook',
  username: 'daniel'
}

ActiveRecord::Base.establish_connection(options)

  