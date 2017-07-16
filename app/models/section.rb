class Section < ApplicationRecord
  belongs_to :page
  has_many :section_edits
  scope :visible,lambda{where(:visible => true)}
  scope :invisible,lambda{where(:visible => false)}
  scope :sorted,lambda{order("position asc")}
  scope :newest_first,lambda{order("created_at desc")}
  scope :search,lambda{|query| where(["name like ?", "%#{query}%"])}
end
