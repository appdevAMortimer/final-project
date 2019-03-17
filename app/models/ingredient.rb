# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ApplicationRecord
    validates :name, presence: true
    validates :user_id, presence: true
    has_many :compositions, :dependent => :destroy
    belongs_to :user
    has_many :recipes, :through => :compositions, :source => :recipe
end
