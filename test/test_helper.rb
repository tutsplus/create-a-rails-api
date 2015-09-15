ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

module TestHelpers
  def create_table! params = {}
    post "/tables", { table: { number: 1, seats: 2 }.merge(params) }
  end

  def spawn_table! params = {}
    Table.create!({ number: 1, seats: 2 }.merge(params))
  end

  def spawn_item!
    count = Item.count
    Item.create!(name: "Item #{count}", price: 1)
  end

  def spawn_order! options = {}
    Order.create!({table_id: options[:table_id], name: "John Smith", email: "jose@josemota.net" }.merge(options))
  end

  def response_hash response
    JSON.parse(response.body)
  end
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
