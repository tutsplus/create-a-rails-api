class OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  belongs_to :table
end
