#encoding: utf-8

Given /^有下列用户:$/ do |table|
  table.hashes.each do |attributes|
    unconfirmed = attributes.delete("unconfirmed") == 'true'
    @user = User.create!(attributes)
    @user.confirm! unless unconfirmed
  end
end

Given /^我登陆进系统$/ do
  steps(%Q{
    Given 我位于首页
    When 我点击链接"登陆"
    And 我填写"Email"为"user@ticketee.com"
    And 我填写"Password"为"password"
    And 我点击"Sign in"按钮
    Then 我应当看到"Signed in successfully."
        })
end