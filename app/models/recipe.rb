# == Schema Information
#
# Table name: recipes
#
#  id                   :integer          not null, primary key
#  title                :string
#  instructions         :string
#  calories_per_serving :integer
#  user_id              :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Recipe < ApplicationRecord
    validates :title, presence: true
    validates :instructions, presence: true
    validates :user_id, presence: true
    has_many :compositions, :dependent => :destroy
    belongs_to :user
    has_many :ingredients, :through => :compositions, :source => :ingredient
end
