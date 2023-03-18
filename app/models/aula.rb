class Aula < ApplicationRecord
  has_many :users
  has_many :asignaturas

  validates :nombre, presence: true
end
