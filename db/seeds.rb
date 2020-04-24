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

def get_is_there_recommend (row)
  if row['is_there_recommend'] == "1" && row['is_there_general'] == "1"
    return 1
  end

  if row['is_there_recommend'] == "0" && row['is_there_general'] == "1"
    return 0
  end

  if row['is_there_recommend'] == "1" && row['is_there_general'] == "0"
    return 2
  end

  return 3
    
end

CSV.foreach('db/univData.csv', headers: true) do |row|
  if row['main'] == "1"
    univ = Univ.find_by(name: row['name'])
    is_there_recommend = get_is_there_recommend(row)

    if !univ.nil?
      univ.update(
        :date_general => get_date_text(row['date_general']),
        :date_recommend => get_date_text(row['date_recommend']),
        :date_number => row['date_general'],
        :location => row['location'],
        :otherFac => row['other_faculty'] || 0,
        :examtypes => row['is_there_recommend'] || 0
      )
    else
      Univ.create(
        :name => row['name'],
        :date_general => get_date_text(row['date_general']),
        :date_recommend => get_date_text(row['date_recommend']),
        :date_number => row['date_general'],
        :location => row['location'],
        :otherFac => row['other_faculty'] || 0,
        :examtypes => row['is_there_recommend'] || 0,
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
      :faculty_type => row["faculty_type"],
      :date_general => get_faculty_date_text(row['date_general']),
      :date_general_pass => get_faculty_date_text(row['date_general_pass']),
      :is_there_recomend => row['is_there_recommend'] || 0,
      :is_there_general => row['is_there_general'] || 0,
      :date_recomend => get_faculty_date_text(row['date_recommend']),
      :date_recomend_pass => get_faculty_date_text(row['date_recommend_pass']),
      :url => row['url'],
      :note => row['note']
    )
  else
    Faculty.create(
      :s_name => row['name'],
      :f_name => row["faculty"],
      :faculty_type => row["faculty_type"],
      :date_general => get_faculty_date_text(row['date_general']),
      :date_general_pass => get_faculty_date_text(row['date_general_pass']),
      :is_there_recomend => row['is_there_recommend'] || 0,
      :is_there_general => row['is_there_general'] || 0,
      :date_recomend => get_faculty_date_text(row['date_recommend']),
      :date_recomend_pass => get_faculty_date_text(row['date_recommend_pass']),
      :department => row['department'],
      :url => row['url'],
      :note => row['note']
    )
  end

  department = Department.find_by(univ_name: row['name'], faculty_name: row["faculty"], name: row["department"])

  if !department.nil?
    department.update(
      :univ_name => row['name'],
      :faculty_name => row['faculty'],
      :name => row['department'],
      :date_general => get_faculty_date_text(row['date_general']),
      :date_recomend => get_faculty_date_text(row['date_recommend']),
      :date_general_pass => get_faculty_date_text(row['date_general_pass']),
      :date_recomend_pass => get_faculty_date_text(row['date_recommend_pass']),
      :math => row['math'] || 0,
      :english => row['english'] || 0,
      :physics => row['physics'] || 0,
      :chemistry => row['chemistry'] || 0,
      :biology => row['biology'] || 0,
      :special => row['special'] || 0,
      :paper => row['paper'] || 0,
      :integration => row['integration'] || 0,
      :practical => row['practical'] || 0,
      :external_english => row['external_english'] || 0,
      :interview => row['interview'] || 0
    )
  else
    Department.create(
      :univ_name => row['name'],
      :faculty_name => row['faculty'],
      :name => row['department'],
      :date_general => get_faculty_date_text(row['date_general']),
      :date_recomend => get_faculty_date_text(row['date_recommend']),
      :date_general_pass => get_faculty_date_text(row['date_general_pass']),
      :date_recomend_pass => get_faculty_date_text(row['date_recommend_pass']),
      :math => row['math'] || 0,
      :english => row['english'] || 0,
      :physics => row['physics'] || 0,
      :chemistry => row['chemistry'] || 0,
      :biology => row['biology'] || 0,
      :special => row['special'] || 0,
      :paper => row['paper'] || 0,
      :integration => row['integration'] || 0,
      :practical => row['practical'] || 0,
      :external_english => row['external_english'] || 0,
      :interview => row['interview'] || 0
    )
  end
end

# CSV.foreach('db/compData.csv', headers: true) do |row|
#   comp = Comp.find_by(name: row['name'])
#   if !comp.nil?
#     comp.update(
#       :area => row['area'],
#       :scale => row['scale'],
#       :place => row['place'],
#       :employees => row['employees'].to_i,
#       :address => row['address'],
#       :founded_year => row['founded_year'].to_i,
#       :founded_month => row['founded_month'].to_i,
#       :what => row['what'],
#       :mission => row['mission'],
#       :occupation => row['occupation'],
#       :want => row['want'],
#       :comment => row['comment']
#     )
#   else
#     Comp.create(
#       :name => row['name'],
#       :area => row['area'],
#       :scale => row['scale'],
#       :place => row['place'],
#       :employees => row['employees'].to_i,
#       :address => row['address'],
#       :founded_year => row['founded_year'].to_i,
#       :founded_month => row['founded_month'].to_i,
#       :what => row['what'],
#       :mission => row['mission'],
#       :occupation => row['occupation'],
#       :want => row['want'],
#       :comment => row['comment']
#     )
#   end
# end
											
# Comp.create(
#   [
#    {
#      name: '株式会社マイテック',
#      area: '電気系',
#      scale: '中小企業',
#      place: '東京都',
#    },
#    {
#      name: '株式会社京製メック',
#      area: '機械系',
#      scale: '中小企業',
#      place: '大分県',
#    },
#    {
#      name: '株式会社Gizumo',
#      area: '情報系',
#      scale: 'ベンチャー企業',
#      place: '東京都',
#    },
#    {
#      name: '伊勢化学工業株式会社',
#      area: '化学系',
#      scale: '中小企業',
#      place: '東京都',
#    },
#    {
#      name: '株式会社シービーケー',
#      area: '土木・建築系',
#      scale: '中小企業',
#      place: '東京都',
#    }
#   ]
# )

# CSV.foreach('db/eventData.csv', headers: true) do |row|
#   event = Event.find_by(name: row['name'])
#   if !event.nil?
#     event.update(
#       :place => row['place'],
#       :date => row['date'],
#       :pref => row['pref'],
#       :event_type => row['event_type'],
#       :outline => row['outline'],
#       :otherinfo => row['otherinfo'],
#       :startTime => row['startTime'],
#       :finishTime => row['finishTime'],
#       :guestComp => row['guestComp'],
#       :target => row['target'],
#       :form => row['form']
#     )
#   else
#     Event.create(
#       :name => row['name'],
#       :place => row['place'],
#       :date => row['date'],
#       :pref => row['pref'],
#       :event_type => row['event_type'],
#       :outline => row['outline'],
#       :otherinfo => row['otherinfo'],
#       :startTime => row['startTime'],
#       :finishTime => row['finishTime'],
#       :guestComp => row['guestComp'],
#       :target => row['target'],
#       :form => row['form']
#     )
#   end
# end