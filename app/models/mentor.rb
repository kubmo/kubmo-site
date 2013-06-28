class Mentor < ActiveRecord::Base
  attr_accessible :name, :email, :linkedin, :occupation, :twitter, :why
end
