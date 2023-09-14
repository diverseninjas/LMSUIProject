Feature: Edit Attendance Module

  Background: Logged on the LMS portal as Admin
    Given Admin is on dashboard page after Login
    When Admin clicks Attendance on the navigation bar
    Then Admin clicks edit icon button on Attendence Manage page


  Scenario Outline: Validate admin able to edit  attendance data
    When Admin fills all the values as <Sheetname> and <rownumber> and click save for Attendance module
    Then Admin should see success message in popup window and sees new attendance details in manage attendance details DB
    Examples:
      |  Sheetname   | rownumber |
      | dataattendance | 7 |

  Scenario Outline: Validate admin able to edit attendance data without Fields
    When Admin fills values missing as <Sheetname> and <rownumber> and click save for Attendance module
    Then Message displays field is missing for Attendance module
    Examples:
      | Sheetname   | rownumber     |
      | dataattendance | 9 |


  Scenario Outline: Validate admin able to  edit attendance by selecting future date
    When Admin fills values with future date in<Sheetname> and <rownumber> and click save for Attendance module
    Then Invalidate attendance date
    Examples:
      | Sheetname   | rownumber     |
      | dataattendance | 11 |