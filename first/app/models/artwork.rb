# == Schema Information
#
# Table name: artworks
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    
    validates :title, presence: true
    validates :artist_id, presence: true
    validates :image_url, presence: true, uniqueness: true 

    belongs_to :user,
    foreign_key: :artist_id,
    class_name: :User

    has_many :artwork_share,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare,
    dependent: :destroy

    has_many :viewers,
    through: :artwork_share,
    source: :viewer

    def self.artworks_for_user_id(user_id)
        user = User.find(user_id)

        user.shared_to_user + user.artworks
    end

end
