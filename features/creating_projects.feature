Feature: 创建工程
  为了使tickets(票)能指派给projects(工程)
  作为一个用户
  我希望能方便的创建工程

  Scenario: 创建一个工程
    Given 我位于首页
    When 我点击链接"新建工程"
    And 我填写"名称"为"TextMate 2"
    And 我点击"创建工程"按钮
    Then 我应当看到"工程创建成功！"