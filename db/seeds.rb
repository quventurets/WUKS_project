# This file shoul
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

def get_date_text (num_texts)
  if !num_texts
    return ''
  end
  text = num_texts.split(',').map do |num_text|
    num = num_text.to_f
    month = num.floor
    date = num - num.floor
    month.to_s << '月' << (date <= 0.1 ? '上旬' : date <= 0.2 ? '中旬' : '下旬')
  end
  return text.join('/')
end

def get_faculty_date_text (num_texts)
  if !num_texts
    return ''
  end
  text = num_texts.split(',').map do |num_text|
    num = num_text.to_f
    month = num.floor
    date = num - num.floor
    month.to_s << '月' << ((date*100).round).to_s << '日'
  end
  return text.join('/')
end

def get_date_num (num_texts)
  if !num_texts
    return ''
  end
  return num_texts.split(',')[0]
end

CSV.foreach('db/univData.csv', headers: true) do |row|
  if row['main'] == "1"
    univ = Univ.find_by(name: row['name'])
    if !univ.nil?
      univ.update(
        :date_general => get_date_text(row['date_general']),
        :date_recommend => get_date_text(row['date_recommend']),
        :date_number => row['date_general'],
        :location => row['location'],
        :otherFac => row['other_fac'] || 0,
        :examtypes => row['exam_types'] || 0
      )
    else
      Univ.create(
        :name => row['name'],
        :date_general => get_date_text(row['date_general']),
        :date_recommend => get_date_text(row['date_recommend']),
        :date_number => row['date_general'],
        :location => row['location'],
        :otherFac => row['other_fac'] || 0,
        :examtypes => row['exam_types'] || 0,
        :rubi => row['rubi']
      )
    end
  end
  faculty = Faculty.find_by(s_name: row['name'], f_name: row["faculty"])

  if !faculty.nil?
    if faculty.department.index(row['department']).nil?
      faculty.department << ',' << row['department']
      faculty.save
    end
    faculty.update(
      :date_general => get_faculty_date_text(row['date_general']),
      :isThereRec => row['exam_types'],
      :date_recomend => get_faculty_date_text(row['date_recommend'])
    )
  else
    Faculty.create(
      :s_name => row['name'],
      :f_name => row["faculty"],
      :date_general => get_faculty_date_text(row['date_general']),
      :isThereRec => row['exam_types'] || 0,
      :date_recomend => get_faculty_date_text(row['date_recommend']),
      :department => row['department']
    )
  end
end

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