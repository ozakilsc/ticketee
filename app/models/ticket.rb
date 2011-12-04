#encoding: utf-8

class Ticket < ActiveRecord::Base

  belongs_to :user
  belongs_to :project

  validates :title, :presence => { :message => "标题 必须填写" }
  validates :description, :presence => { :message => "描述 必须填写" },
            :length => { :minimum => 3 }

  # validates_presence_of :title, :message => "标题 必须填写"
  # validates_presence_of :description, :message => "描述 必须填写"
end
