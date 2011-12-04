Feature: 注册
  为了展开我的工作
  作为一个用户
  我希望能注册进系统

  Scenario: 注册
    Given 我位于首页
    When 我点击链接"注册"
    And 我填写"Email"为"user@ticketee.com"
    And 我填写"Password"为"password"
    And 我填写"Password confirmation"为"password"
    And 我点击"Sign up"按钮
    Then 我应当看到"You have signed up successfully."