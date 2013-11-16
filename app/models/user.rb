class User< ActiveRecord::Base
  attr_accessor :name, :email
  validates :name, :email, presence: true
end
