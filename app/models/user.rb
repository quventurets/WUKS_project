class User < ApplicationRecord
  #名前が空の場合はsaveできないようにする
  validates :name, {presence: true}

  '''
    前提: 登録GmailアドレスはWUKSのサイトから変更不可
    処理:
      メアドをキーに一致するレコードを探す
      (1)見つかった場合:      そのレコードを返す
      (2)見つからなかった場合: 新たにレコード作成、provider,uid,name,emailを設定して返す  
      (1)は1度でもログインしたユーザ、(2)は新規登録ユーザに対する処理
  '''
  def self.from_omniauth(auth)
    #emailでユーザを検索し見つからない場合
    if !where(email: auth.info.email).first
      #新たにUserテーブルに追加する
      user = User.new 
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
    #見つかった場合
    else
      #それをuserに代入する
      user = where(email: auth.info.email).first
    end
    return user
  end
end
