class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :myreads, dependent: :destroy

  def self.find_for_google(auth)
    User.where(email: auth.info.email).first_or_create(password: Devise.friendly_token[0,20])
  end
end
