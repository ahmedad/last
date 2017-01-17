class Post < ApplicationRecord
	acts_as_votable
	belongs_to :user
	has_many :comments
	belongs_to :category
	belongs_to :seat

	scoped_search on: [:name]
  	# named_scope :public, conditions: { public: true }


    has_attached_file :image, styles: { medium: "700x500>", small: "450x350>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
