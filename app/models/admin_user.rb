class AdminUser < ApplicationRecord
  #self.table_name = 'admin_users'
  has_secure_password
  has_and_belongs_to_many :pages
  has_many :section_edits

  FORBIDDEN_USERNAME = ['shit','fuck']
  validates :first_name ,:presence => true, :length => {maximum: 25}
  validates :last_name ,:presence => true, :length => {maximum: 25}
  validates :username ,:presence => true, :length => {:within => 8..25},uniqueness: true
  validates :email ,:presence => true, :length => {maximum: 100}, :confirmation => true

  # validates :allowed_username

  def allowed_username
    if FORBIDDEN_USERNAME.include?(:username)
      errors.add(:username,'not allowed username')
    end
  end

end
