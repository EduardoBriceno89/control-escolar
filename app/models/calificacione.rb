class Calificacione < ApplicationRecord
  belongs_to :user
  belongs_to :asignatura
  belongs_to :modulo

  validates :promedio, inclusion: { in: 0.0..10.0 }, presence: true
end
