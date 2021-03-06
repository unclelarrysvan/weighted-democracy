class Issue < ActiveRecord::Base
  attr_accessible :description, :name, :discipline_id
  validates_presence_of :name
  validates_presence_of :description

  has_many :issue_disciplines
  has_many :disciplines, :through => :issue_disciplines

  #accepts_nested_attributes_for :issue_disciplines
end
