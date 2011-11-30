Feature: 查看工程列表
  为了将票分配给工程
  作为一个用户
  我希望能看到有效工程的列表

  Scenario: 列出所有工程的列表
    Given 有一个叫"TextMate 2"的工程
    And 我位于首页
    When 我点击链接"TextMate 2"
    Then 我应当位于"TextMate 2"的工程页面