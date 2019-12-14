class Univ < ApplicationRecord

  HOKKAIDO = ["北海道"]
  TOHOKU = ["青森県", "岩手県", "秋田県", "宮城県", "山形県", "福島県"]
  HOKURIKU = ["新潟県", "富山県", "石川県", "福井県"]
  CHUBU  = ["山梨県", "長野県", "岐阜県", "静岡県", "愛知県"]
  KANTO = ["茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県"]
  KINKI = ["三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県"]
  CHUGOKU = ["鳥取県", "島根県", "岡山県", "広島県", "山口県"]
  SIKOKU = ["徳島県", "香川県", "愛媛県", "高知県"]
  KYUSHU = ["福岡県", "長崎県", "佐賀県", "大分県", "宮崎県", "熊本県", "鹿児島県", "沖縄県"]

  def self.filter(params, departments)
    examtypes = (params["examtypes"] == "1") ? [1] : [0,1]
    otherFac = (params["otherFac"] == "1") ? [1] : [0,1]
    
    hokkaido = (params["hokkaido"] == "0") ? [] : HOKKAIDO
    tohoku = (params["tohoku"] == "0") ? [] : TOHOKU
    hokuriku = (params["hokuriku"] == "0") ? [] : HOKURIKU
    chubu  = (params["chubu"] == "0") ? [] : CHUBU
    kanto = (params["kanto"] == "0") ? [] : KANTO
    kinki = (params["kinki"] == "0") ? [] : KINKI
    chugoku = (params["chugoku"] == "0") ? [] : CHUGOKU
    sikoku = (params["sikoku"] == "0") ? [] : SIKOKU
    kyushu = (params["kyushu"] == "0") ? [] : KYUSHU

    order_by = begin
      case params["order_by"]
        when "id" then "id"
        when "date_number" then "date_number"
        when "rubi" then "rubi"
        else "id"
      end
    end

    order = !(params["order"] == "DESC")? "ASC" : "DESC"
    
    Univ.where(
      name: departments.map{|department| department.univ_name}.uniq,
      examtypes: examtypes, 
      otherFac: otherFac, 
      location: [hokkaido, tohoku, hokuriku, chubu, kanto, kinki, chugoku, sikoku, kyushu].reduce([], :concat)
    ).order(order_by + ' ' + order)
  end
end
