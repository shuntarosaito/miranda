class Company < ActiveRecord::Base
  belongs_to :users
  has_many :evaluations
end
