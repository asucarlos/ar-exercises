class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0} 
  validate :has_apparel

    private

    def has_apparel
      if mens_apparel = false or womens_apparel = false
        errors.add(:mens_apparel, 'has to have one apparel') 
      end
    end
end
