Feature: 删除票样
  为了能删除票样
  作为一个用户
  我希望通过按钮的点击来让票样消失

  Background:
    Given 有一个叫"TextMate 2"的工程
    And 有下列用户:
      | email | password |
      | user@ticketee.com | password |
    # And 这个工程有一张票样:
    And "user@ticketee.com"为这个工程建了一张票样:
      | title | description |
      | Make it shiny! | Gradients! Starbursts! Oh my! |
    And 我登陆进系统
    And 我位于首页
    When 我点击链接"TextMate 2"
    And 我点击链接"Make it shiny!"
  
  Scenario: 删除票样
    When 我点击链接"删除票样"
    Then 我应当看到"票样已成功删除。"
    And 我应当位于"TextMate 2"的工程页面