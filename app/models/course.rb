class Course < ApplicationRecord
  has_many :lessons
  has_and_belongs_to_many :categories
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  def first_lesson
    lessons.order(:position).first
  end
end
