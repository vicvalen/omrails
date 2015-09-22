class Pin < ActiveRecord::Base
	belongs_to :user
	validates :description, presence: true
    validates :user_id, presence: true
    has_attached_file :image, styles: { medium: "300x300", thumb: "100x100>" }
    validates_attachment_content_type :image, precence: true,
                                       content_type: /\Aimage\/.*\Z/,
                                       size: { less_than: 5.megabytes }                        
	
end
 