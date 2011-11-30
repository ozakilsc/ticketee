#encoding: utf-8

require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^(?:|我)位于(.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|我)点击链接"([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|我)填写"([^"]*)"为"([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^(?:|我)点击"([^"]*)"按钮$/ do |button|
  click_button(button)
end

Then /^(?:|我)应当看到"([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^(?:|我)应当位于(.+)$/ do |page_name|
  path_to(page_name)
end

Then /^我不应当再看到"([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end