class Comment < ApplicationRecord
  belongs_to :username
  belongs_to :list
end
