class Comedian < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   # validates :name, presence: true
   #  validates :username, presence: true


    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable, :omniauthable, :omniauth_providers => [:facebook]


           # has_many :jokes
           has_many :jokes, dependent: :destroy
           has_many :shows
           has_many :clubs, through: :shows

  def self.new_with_session(params, session)
    super.tap do |comedian|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        comedian.email = data["email"] if comedian.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |comedian|
      comedian.email = auth.info.email
      comedian.password = Devise.friendly_token[0,20]
      comedian.name = auth.info.name   # assuming the user model has a name
      comedian.image = auth.info.image # assuming the user model has an image
    end
  end
end
