#encoding: utf-8

Given /^这个工程有一张票样:$/ do |table|
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes)
  end
end

Given /^"([^"]*)"为这个工程建了一张票样:$/ do |email, table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
    attributes = attributes.merge!(:user => User.find_by_email!(email))
    @project.tickets.create!(attributes)
  end
end