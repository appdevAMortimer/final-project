# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ApplicationRecord
    belongs_to :user
    validates :email, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :user_id, presence: true
end
