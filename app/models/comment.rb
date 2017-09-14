class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :house_image
end
