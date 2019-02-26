# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'jack', last_name: 'doe',
            description: 'hhhh', availability: '15/01/2087', location: 'rabat',
            can_travel: false, interpreter: false, phone: 'hhhhh', daily_rate: 5,
            linkedin: 'jjjjjj')

