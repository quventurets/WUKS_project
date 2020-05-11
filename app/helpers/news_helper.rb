require 'csv'

module NewsHelper
  Path = 'db/schedData.csv'
  # 専攻名の略称と正式名称の関係
  Major = {'ei'=>'電気情報工学科', 'ms'=>'物質科学工学科', 'es'=>'エネルギー科学科', 'ma'=>'機械航空工学科', 'ee'=>'地球環境工学科'}
  # 時間割の情報提供者
  Sname = {'ei'=>'y', 'ms'=>'k', 'es'=>'f', 'ma'=>'s', 'ee'=>'k'}  

  # 専攻の略称から正式名称を返す
  def major_name(mj)
    Major[mj]
  end
  
  # 協力者の名前を返す
  def sched_name(mj)
    Sname[mj]
  end

  # 学科と前期 / 後期を指定して時間割の2次元配列を返す
  def get_sched(term, major)
    ans = []
    CSV.foreach(Path, headers: true) do |row|
      if row['major'] == major && row['term'] == term
        ans.push(row[4..9])
      end
    end
    ans.transpose
  end

  # 授業の種類から時間割の表におけるtdの背景色を返す
  def get_bgcolor(type)
    if type.nil?
      return ""
    end
    if type=="講義(必修)"
      color = "#ff7f50"
    elsif type=="講義(選択)"
      color = "#00bfff"
    elsif type=="実験"
      color = "#ba55d3"
    elsif type="講義(基幹教育)"
      color = "gold"
    end
    color
  end
  
end
