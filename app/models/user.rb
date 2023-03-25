class User < ApplicationRecord
  rolify
  belongs_to :aula, optional: true
  has_many :calificaciones
  after_create :assign_default_role

  validates :nombre, length: { minimum: 4, maximum: 30 }, presence: true
  validates_format_of :nombre, with: /\A[^0-9`!@#$%\^&*+_=]+\z/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def assign_default_role
    add_role(:estudiante) if roles.blank?
  end
end
