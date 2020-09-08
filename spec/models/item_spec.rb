require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'ユーザー商品出品' do
    before do
      @item = FactoryBot.build(:item)
    end

    context '商品出品がうまくいくとき' do
      it 'image,name,explanation,explanation'
    end
  end


end
name            | string  | null: false                    |
| image           | string  | null: false                    |
| explanation     | text    | null: false                    |
| price           | integer | null: false                    |
| category_id     | integer | null: false                    |
| status_id       | integer | null: false                    |
| postage_id      | integer | null: false                    |
| user_id         | integer | null: false, foreign_key: true |
| prefecture_id   | integer | null: false                    |
| shipping_day_id 

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    before do
      @user = FactoryBot.build(:user)
    end

    context '新規登録がうまくいくとき' do
      it 'nameとemail、passwordとpassword_confirmation,family_name,first_name,family_name_kana,firsy_name_kanaが存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'nicknameが存在すれば登録できる' do
        @user.nickname = 'キン肉マン'
        expect(@user).to be_valid

        ログインしているユーザーだけが、出品ページへ遷移できること
画像は1枚必須であること(ActiveStorageを使用すること)
商品名が必須であること
商品の説明が必須であること
カテゴリーの情報が必須であること
商品の状態についての情報が必須であること
配送料の負担についての情報が必須であること
発送元の地域についての情報が必須であること
発送までの日数についての情報が必須であること
価格についての情報が必須であること
価格の範囲が、¥300~¥9,999,999の間であること
販売価格は半角数字のみ入力可能であること
入力された販売価格によって、非同期的に販売手数料や販売利益が変わること(JavaScriptを使用して実装すること)