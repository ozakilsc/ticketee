#encoding: utf-8

class Project < ActiveRecord::Base
  validates_presence_of :name, :message => "名称 不能为空"
end
