#encoding: utf-8
Given /^有一个叫"([^"]*)"的工程$/ do |name|
  # Project.create(:name => name)
  Factory(:project, :name => name)
end