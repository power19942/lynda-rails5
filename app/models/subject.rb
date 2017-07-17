class Subject < ApplicationRecord

  has_many :pages

  scope :visible,lambda{where(:visible => true)}
  scope :invisible,lambda{where(:visible => false)}
  scope :sorted,lambda{order("position asc")}
  scope :newest_first,lambda{order("created_at desc")}
  scope :search,lambda{|query| where(["name like ?", "%#{query}%"])}

  CONTENT_TYPE = ['text','html']

  validates_presence_of :name
  validates_length_of :name , :maximum => 255
  validates_inclusion_of :content_type, :in => CONTENT_TYPE,
                         :message=>'shit'
end
