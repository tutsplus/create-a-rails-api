class Receipt < ActiveRecord::Base
  belongs_to :order
end
