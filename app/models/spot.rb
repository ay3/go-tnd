class Spot < ApplicationRecord
  has_many :comments
  belongs_to :tanada_level
  belongs_to :prefecture

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

  # file size check
  validate :file_size

  def file_size
    if picture.file.size.to_f/(1000*1000) > 2
      errors.add(:picture, "2MB以内でお願いします!")
    elsif picture.file.size.to_f/(1000*1000) < 0.01
      errors.add(:picture, "ファイルが小さ過ぎます。10KB以上でお願いします。")
    end
  end

end
