class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: 'イケボ'},{id: 2, name: 'カワボ'},{id: 3, name: 'その他'}]
  include ActiveHash::Associations
  has_many :lives
  has_many :users
end