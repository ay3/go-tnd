class Spot < ApplicationRecord
  has_many :comments
  mount_uploader :picture, PictureUploader

  validates :name, 
  presence: { message: "何か入力して下さい。" },
  length: { in: 2..30, message: "2〜30文字で入力して下さい。" }

  validates :prefectures, length: { maximum: 3 }
  validates :postcode,    length: { maximum: 7 },  numericality: { only_integer: true }
  validates :address,     length: { maximum: 30 }
  validates :mapcode,     length: { maximum: 15 }, numericality: { only_integer: true }
  validates :lat,         numericality: true
  validates :lng,         numericality: true
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
