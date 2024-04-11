# == Schema Information
#
# Table name: artwork_shares
#
#  id         :integer          not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ArtworkShare < ApplicationRecord

    validates :artwork_id, presence: true, uniqueness: true
    validates :viewer_id, presence: true, uniqueness: true

    belongs_to :artwork

    belongs_to :viewer,
    foreign_key: :viewer_id,
    class_name: :User

end
