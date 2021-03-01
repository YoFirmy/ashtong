class User < ApplicationRecord
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
    validates :password, presence: true, format: { with: /\A\S{5,}\z/ }

    after_initialize do
        self.admin ||= false
    end
end
