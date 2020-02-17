# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kind.where(name: 'Perro').first_or_create
Kind.where(name: 'Gato').first_or_create

Breed.where(name: 'Pastor Alemán').first_or_create
Breed.where(name: 'San Bernardo').first_or_create
Breed.where(name: 'Basset Hound').first_or_create
Breed.where(name: 'Beagle').first_or_create
Breed.where(name: 'Fox Terrier').first_or_create
Breed.where(name: 'Quiltro').first_or_create
Breed.where(name: 'Americano de pelo duro').first_or_create
Breed.where(name: 'Asiático').first_or_create
Breed.where(name: 'Siamés').first_or_create
Breed.where(name: 'Oriental de pelo corto').first_or_create


