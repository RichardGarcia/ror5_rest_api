class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
end


# class Article < ApplicationRecord
#   validates :title, presence: true
#   validates :body, presence: true
# end
