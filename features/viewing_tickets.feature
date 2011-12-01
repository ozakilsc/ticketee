Feature: 查看票样
  为了能查看某个工程的票样
  作为一个用户
  我希望能在工程页面见到它

  Background:
    Given 有一个叫"TextMate 2"的工程
    And 这个工程有一张票样:
      | title | description |
      | Make it shiny! | Grandients! Startbursts! Oh my! |
    And 有一个叫"Internet Explorer"的工程
    And 这个工程有一张票样:
      | title | description |
      | Standards compliance | Isn't a joke. |
    And 我位于首页

  Scenario: 查看一个工程的票样
    When 我点击链接"TextMate 2"
    Then 我应当看到"Make it shiny!"
    And 我不应当再看到"Standards compliance"
    When 我点击链接"Make it shiny!"
    Then 我应当看到"Make it shiny"在"#ticket h2"标签内
    And 我应当看到"Grandients! Startbursts! Oh my!"

    When 我点击链接"Ticketee"
    And 我点击链接"Internet Explorer"
    Then 我应当看到"Standards compliance"
    And 我不应当再看到"Make it shiny!"
    When 我点击链接"Standards compliance"
    Then 我应当看到"Standards compliance"在"#ticket h2"标签内
    And 我应当看到"Isn't a joke."

