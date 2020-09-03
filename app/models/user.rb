class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  has_many :buys

  with_options presence: true do 
    # format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' } do
    validates :nickname
    validates :email, uniqueness: { case_sensitive: false }
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i }
    validates :password_confirmation, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i }
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
    #validates :first_name_confirmation, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
    validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
    #validates :family_name_confirmation, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
    validates :first_name_kana, format: { with: /\A[ァ-ン]+\z/, message: 'カタカナを使用してください' }
    #validates :first_name_kana_confirmation, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
    validates :family_name_kana, format: { with: /\A[ァ-ン]+\z/, message: 'カタカナを使用してください' }
    #validates :family_name_kana_confirmation, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
    validates :birthday
  end
end