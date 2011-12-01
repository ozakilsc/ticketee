#encoding: utf-8

Given /^这个工程有一张票样:$/ do |table|
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes)
  end
end