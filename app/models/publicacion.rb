class Publicacion < ApplicationRecord
    validates :titulo, presence: true, length: { minimum: 5 }
    validates :body, presence: true
    has_one_attached :imagen
end
