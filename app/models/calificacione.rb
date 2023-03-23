class Calificacione < ApplicationRecord
  belongs_to :user
  belongs_to :asignatura
  belongs_to :modulo

  validates :promedio, numericality: { allow_floats: true, message: 'Debe ser un número decimal' }, presence: true
  validates :promedio, inclusion: { in: 0..10, message: 'Debe estar entre 0 y 10' }
end
