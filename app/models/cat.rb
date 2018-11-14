class Cat < ApplicationRecord
  COLORS = ["red", "blue", "yellow", "white", "black"]
  validates :birth_date, :color, :sex, :name, :description, presence: true
  validates :color, inclusion: COLORS
  validates :sex, inclusion: ["M", "F"]

  def age
    DateTime.now.year - self.birth_date.year
  end
end
