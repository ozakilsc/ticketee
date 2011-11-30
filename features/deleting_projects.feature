Feature: 删除工程
  为了能删除无用的工程
  作为一个工程管理用户
  我希望这些工程消失

  Background:
    Given 有一个叫"TextMate 2"的工程
    And 我位于首页
    When 我点击链接"TextMate 2"
    And 我点击链接"删除工程"

  Scenario: 删除工程
    Then 我应当看到"工程已成功删除。"
    And 我不应当再看到"TextMate 2"