class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie_id, uniqueness: { scope: :list_id, message: 'Cette association film-liste existe déjà.' }
  validates :comment, presence: true, length: { minimum: 6 }
end
