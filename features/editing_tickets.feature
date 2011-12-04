Feature: 修改票样
  为了能够修改票样的信息
  作为一个用户
  我希望能对票样进行修改

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
    Given 我位于首页
    When 我点击链接"TextMate 2"
    And 我点击链接"Make it shiny!"
    When 我点击链接"修改票样"

  Scenario: 更新一个票样
    When 我填写"标题"为"Make it really shiny!"
    And 我点击"更新票样"按钮
    Then 我应当看到"票样已更新成功。"
    And 我应当看到"Make it really shiny!"
    But 我不应当再看到"Make it shiny!"

  Scenario:用不合法的属性来更新票样
    When 我填写"标题"为""
    And 我点击"更新票样"按钮
    Then 我应当看到"票样更新失败。"