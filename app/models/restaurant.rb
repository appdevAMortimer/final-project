# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string
#  location   :string
#  user_id    :integer
#  menu_link  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ApplicationRecord
    validates :name, presence: true
    validates :user_id, presence: true
    validates :menu_link, presence: true
    belongs_to :user
end
