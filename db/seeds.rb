# This file shoul
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

Comp.create(
  [
   {
     name: '株式会社マイテック',
     area: '電気系',
     scale: '中小企業',
     place: '東京都',
   },
   {
     name: '株式会社京製メック',
     area: '機械系',
     scale: '中小企業',
     place: '大分県',
   },
   {
     name: '株式会社Gizumo',
     area: '情報系',
     scale: 'ベンチャー企業',
     place: '東京都',
   },
   {
     name: '伊勢化学工業株式会社',
     area: '化学系',
     scale: '中小企業',
     place: '東京都',
   },
   {
     name: '株式会社シービーケー',
     area: '土木・建築系',
     scale: '中小企業',
     place: '東京都',
   }
  ]
)