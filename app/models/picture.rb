class Picture < ActiveRecord::Base
  validates :source, presence: true, uniqueness: true
  validates :caption, presence: true
end
