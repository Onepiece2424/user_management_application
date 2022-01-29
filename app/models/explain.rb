class Explain < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploaders :img, ImgUploader
  serialize :img, JSON
end
