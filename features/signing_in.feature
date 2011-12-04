Feature: 登陆
  为了能使用这个系统
  作为用户
  我希望能登陆进去

  Scenario: 通过有效的邮件验证登陆系统
    Given 有下列用户:
      | email | password | unconfirmed |
      | user@ticketee.com | password | true |
    And "user@ticketee.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then 我应当看到"Your account was successfully confirmed"
    Then 我应当看到"您：user@ticketee.com 已登陆。"

  Scenario: 通过表单进行登陆
    Given 有下列用户:
      | email | password |
      | user@ticketee.com | password |
    And 我登陆进系统
    # And 我位于首页
    # When 我点击链接"登陆"
    # And 我填写"Email"为"user@ticketee.com"
    # And 我填写"Password"为"password"
    # And 我点击"Sign in"按钮
    # Then 我应当看到"Signed in successfully."