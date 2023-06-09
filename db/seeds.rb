# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Role.create name: :estudiante
Role.create name: :admin

User.create(nombre: 'Administrador', email: 'admin@mail.com', password: 'admin1234',
            password_confirmation: 'admin1234') do |user|
  user.add_role(:admin)
end

8.times do |i|
  Modulo.create(modulo: i + 1)
end
