class Atmosphere < ActiveHash::Base
  self.data = [
    {id: 1, name: '本格的'},{id: 2, name: 'まったり/のんびり'},{id: 3, name: '企画'},
    {id: 4, name: 'コラボ'}]
  include ActiveHash::Associations
  has_many :lives
end