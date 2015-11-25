class Organization < ActiveRecord::Base
  translates :description
  mount_uploader :logo, LogoUploader

  validates :name, uniqueness: true, presence: true

  has_many :members

  has_many :jobs
end
