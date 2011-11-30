Feature: 修改工程
  为了能对工程的信息作修改
  作为一个用户
  我希望能通过接口来进行修改

  Background:
    Given 有一个叫"TextMate 2"的工程
    And 我位于首页
    When 我点击链接"TextMate 2"
    And 我点击链接"修改工程"

  Scenario: 修改工程
    And 我填写"名称"为"TextMate 2 beta"
    And 我点击"修改工程"按钮
    Then 我应当看到"工程已成功修改。"
    And 我应当位于"TextMate 2 beta"的工程页面

  Scenario: 用不合法的属性修改工程
    And 我填写"名称"为""
    And 我点击"修改工程"按钮
    Then 我应当看到"工程修改失败。"