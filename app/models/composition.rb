# == Schema Information
#
# Table name: compositions
#
#  id              :integer          not null, primary key
#  quantity        :float
#  recipe_id       :integer
#  ingredient_id   :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  unit_of_measure :string
#

class Composition < ApplicationRecord
    validates :quantity, presence: true
    validates :recipe_id, presence: true
    validates :ingredient_id, presence: true
    validates :user_id, presence: true
    validates :unit_of_measure, presence: true
    belongs_to :recipe
    belongs_to :ingredient
    belongs_to :user
end
