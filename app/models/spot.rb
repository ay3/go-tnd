class Spot < ApplicationRecord
  has_many :comments
  mount_uploader :picture, PictureUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, 
  presence: { message: "何か入力して下さい。" },
  length: { in: 2..30, message: "2〜30文字で入力して下さい。" }

  validates :prefectures, length: { maximum: 3 }
  validates :postcode,    length: { maximum: 7 }
  validates :address,     length: { maximum: 30 }
  validates :mapcode,     length: { maximum: 15 }
  #validates :latitude,    numericality: true
  #validates :longitude,   numericality: true
  validates :access,      length: { maximum: 100 }

  validates :category,
  presence: { message: "何か入力して下さい。" },
  length: { in: 2..30, message: "2〜30文字で入力して下さい。" }

  validates :url,         length: { maximum: 100 }
  validates :memo,        length: { maximum: 500 }

  #validates :picture, format: { with: /JPG/ }
  #validate :check_picture

  #def check_picture
  #    if file.size > 1.megabyte
  #      errors.add(:picture, "1MBまでアップロードできます")
  #    end
  #end

end
