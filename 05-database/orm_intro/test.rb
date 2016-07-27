require 'pg'
require 'active_record'
require 'pry'


options = {
  adapter: 'postgresql',
  database: 'guestbook',
  username: 'daniel' # not necessary for mac
}

ActiveRecord::Base.establish_connection(options) # similar PG.connect()

require_relative 'guest'

binding.pry

