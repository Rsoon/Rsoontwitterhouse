class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable   
  has_many :tweets

  validates :username, presence: true, uniqueness: true
  serialize :following, Array
  serialize :follower, Array

  before_create :create_activation
  attr_accessor :remember_token, :activation_token
end

private

def create_activation
  self.activation_token = User.new_token
  self.activation = User.digest(activation_token)
end
