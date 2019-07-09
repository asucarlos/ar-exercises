class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: {message:'type something'}
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40,
  less_than_or_equal_to: 200 
  }
  validates :store_id, presence: {message: 'has to belong some store'}



end
