class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: {only_integer: true, greater_than: 0}
  validate :must_carry_men_or_women_apparel

  def must_carry_men_or_women_apparel
    if !(mens_apparel || womens_apparel)
      errors.add(:mens_apparel, "must carry at least mens or womens apparel!")
    end
  end
end
