Feature: Amex PIM Sale transactions for sample tests

#  Background: test setup for sample rest service
#    Given request base url 'https://reqres.in/'
#
#  @Regression
#  Scenario: GET without params
#    Given request path '/api/users'
#    And request header 'header1' : 'hello'
#    And request headers
#      | Header Name | Header Value |
#      | header2     | hello        |
#    When request method GET
#    Then response status code should be 200
#    And response body field "data[0].first_name" is "Equal To" "George"
#    And response body should have following fields with values
#      | field              | expectedValue          |
#      | data[0].first_name | George                 |
#      | data[0].email      | george.bluth@reqres.in |
#    And response body should have following fields with values on expression
#      | field              | expression                            | expectedValue |
#      | total              | >=                                    | 1             |
#      | data[0].first_name | ==                                    | George        |
#      | data.id            | LIST_EVERY_ITEM_GREATER_THAN_EQUAL_TO | 1             |
#      | data.id            | EVERY ITEM IN LIST LESS THAN EQUAL TO | 10            |
#      | data.email         | EVERY ITEM IN LIST HAS VALUE          |               |
#      | data               | LIST_HAS_SIZE                         | 6             |
#      | data.first_name    | LIST_HAS_ITEM                         | Janet         |
#      | data.first_name    | LIST HAS ITEMS                        | Janet,George  |
#    And assert response header 'Content-Type' : 'application/json; charset=utf-8'
#    And response header 'Content-Type' is 'not equal to' 'application/jsXXXXon; charset=utf-8'
#    And response should have following headers with values
#      | field             | expected_value |
#      | Transfer-Encoding | chunked        |
#      | Connection        | keep-alive     |
#    And response should have following headers with values on expression
#      | field             | expression | expectedValue |
#      | Transfer-Encoding | equal to   | chunked       |
#      | Connection        | equal to   | keep-alive    |
#
#  @Regression
#  Scenario: GET with parameters
#    Given request path '/api/users'
#    And request query parameters
#      | Param Name | Param Value |
#      | page       | 2           |
#    When request method GET
#    Then response status code should be 200
#
#  @Regression
#  Scenario: POST
#    Given request path '/api/users'
#    And request body content-type 'JSON'
#    And request payload from file 'request-payload/payload.json'
#    And request base payload from file 'request-payload/payload.json' and set following fields
#      | field    | value         |
#      | name     | test          |
#      | email.id | test@info.com |
#    When request method POST
#    Then response status code should be 201
#    Then assert response body fields with values
#      | Field_Name | Field_Value |
#      | name       | test        |
#      | job        | leader      |
#
#  @TestRail
#  Scenario: Test TestRail authentication
#    Given request base url ''
#    And request path 'https://venkatrest.testrail.io/index.php?/api/v2/get_projects'
#    And request headers
#      | Header_Name  | Header_Value     |
#      | Content-Type | application/json |
#    And request basic authorization 'venkat@test.com' : 'test1234'
#    When request method GET
#    Then response status code should be 200
#    Then response status line should be 'HTTP/1.1 200 OK'
#  @runnow
#Scenario: Demo Util methods
#  Given user get api first
#  And user user post method one
#  And user user post method two


