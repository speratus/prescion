class User < ApplicationRecord
    has_secure_password

    has_many :stories
    has_many :series

    validates :name, :email, :username, presence: true
    validates :username, uniqueness: true
end
