class Product < ActiveRecord::Base
	# belongs_to :user
	belongs_to :category
	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item
	mount_uploader :image_url, ImageUploader
	mount_uploader :image1_url, ImageUploader
	mount_uploader :image2_url, ImageUploader
	mount_uploader :image3_url, ImageUploader

	private
	  def ensure_not_referenced_by_any_line_item
	    if line_items.empty?
	      return true
	    else
	      errors.add(:base, 'line Items present')
	      return false
	    end
	  end
end
