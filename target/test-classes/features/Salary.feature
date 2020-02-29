#Author: Zamira Dauyekeyeva
@WIP
Feature: Employee Salary

    Background: Login and find employee

    Given user logged into HRMS
    And user navigates to Employee list
    And search for the employee "9458"

  @Salary
  Scenario: Add Employee Salary
  When I navigate Salary I click first Add button
  And I enter the Salary details
  | SalaryComponent | PayFrequency | Currency             | Amount | AccountNumber | AccountType | RoutingNumber | DirectAmount |
  | Direct deposit  | Monthly      | United States Dollar |  10000 |    2233445566 | Savings     |      99883355 |        10000 |
  When I click on Save for adding salary
  Then I see Salary has been added