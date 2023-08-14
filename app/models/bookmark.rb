class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "already bookmarked in this list" }
  belongs_to :movie
  belongs_to :list
end
