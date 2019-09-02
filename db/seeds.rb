# This file shoul
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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