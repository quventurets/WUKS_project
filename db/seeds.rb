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
    name: '東京大学',
    date_general: '7月上旬',

    date_number: 7.0,
    location: '東京都',
    otherFac: 0,
    examtypes: 0,
   },
   {
    name: '東京工業大学',
    date_general: '8月下旬',
    date_recommend: '6月中旬',
    date_number: 8.7,
    location: '東京都',
    otherFac: 1,
    examtypes: 1,
   },
   {
    name: '電気通信大学',
    date_general: '6月下旬',
    date_recommend: '6月上旬',
    date_number: 6.8,
    location: '東京都',
    otherFac: 0,
    examtypes: 1,
   },
   {
    name: '九州大学',
    date_general: '8月中旬',
    date_recommend: '6月上旬',
    date_number: 8.2,
    location: '福岡県',
    otherFac: 1,
    examtypes: 1,
   },
   {
    name: '名古屋大学',
    date_general: '8月上旬',

    date_number: 8.0,
    location: '愛知県',
    otherFac: 1,
    examtypes: 0,
   },
   {
    name: '大阪大学',
    date_general: '8月中旬',

    date_number: 8.4,
    location: '大阪府',
    otherFac: 1,
    examtypes: 0,
   }
    ]
)