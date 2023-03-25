class Asignatura < ApplicationRecord
  belongs_to :aula
  has_many :calificaciones

  validates :nombre, presence: true
end
