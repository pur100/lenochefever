class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  validates :siren, presence: true
  validates_length_of :siren, is: 10,  message: "must be 10 digit long"


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :invoices, dependent: :destroy
end
