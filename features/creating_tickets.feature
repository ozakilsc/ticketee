Feature: 创建票（与工程关联的资源，嵌套）
  为了给一个工程创建票
  作为一个用户
  我希望选择某个工程来创建票

  Background:
    Given 有一个叫"Internet Explorer"的工程
    And 有下列用户:
      | email | password |
      | user@ticketee.com | password |
    And 我位于首页
    When 我点击链接"Internet Explorer"
    And 我点击链接"新建票样"
    Then 我应当看到"You need to sign in or sign up before continuing."
    When 我填写"Email"为"user@ticketee.com"
    And 我填写"Password"为"password"
    And 我点击"Sign in"按钮
    Then 我应当看到"新建票样"

  Scenario: 新建一个票样
    When 我填写"标题"为"Non-standards compliance"
    And 我填写"描述"为"我的页面很丑陋"
    And 我点击"创建票样"按钮
    Then 我应当看到"票样已成功创建。"
    And 我应当看到"由user@ticketee.com创建。"

  Scenario: 不合法的参数建立票样会失败
    When 我点击"创建票样"按钮
    Then 我应当看到"票样创建失败。"
    And 我应当看到"标题 必须填写"
    And 我应当看到"描述 必须填写"