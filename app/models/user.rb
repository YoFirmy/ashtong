class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :password, length: { minimum: 5 }, if: :password_required?

  def enforce_password_validation
    @enforce_password_validation = true
  end
  
  after_initialize do
    self.admin ||= false
  end

  private

  def password_required?
    @enforce_password_validation || password.present?
  end
end
