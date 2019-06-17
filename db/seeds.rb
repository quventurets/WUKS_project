# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Univ.create(
  [
   {
     name: '大阪大学',
     date: '8月中旬，7月中旬',
     difficulty: '難関',
   },
   {
     name: '東北大学',
     date: '8月末',
     difficulty: '難関',
   },
   {
     name: '京都大学',
     date: '8月末',
     difficulty: '最難関',
   }
    ]
)