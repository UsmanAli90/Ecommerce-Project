class User < ApplicationRecord
  include Ransackable

  has_many :order

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
