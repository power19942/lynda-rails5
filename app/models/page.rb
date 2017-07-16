class Page < ApplicationRecord
  belongs_to :subject
  has_many :sections
  has_and_belongs_to_many :admin_users
  scope :visible,lambda{where(:visible => true)}
  scope :invisible,lambda{where(:visible => false)}
  scope :sorted,lambda{order("position asc")}
  scope :newest_first,lambda{order("created_at desc")}
  scope :search,lambda{|query| where(["name like ?", "%#{query}%"])}
end
