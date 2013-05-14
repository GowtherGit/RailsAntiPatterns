class State < ActiveRecord::Base
  attr_accessible :name

  belongs_to :invoice
end
