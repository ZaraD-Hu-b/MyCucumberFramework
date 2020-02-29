#Author: Zamira Dauyekeyeva
@WIP
Feature: Employee Qualifications

  Background: 
    Background: Login and find employee

    Given user logged into HRMS
    And user navigates to Employee list
    And search for the employee "9458"

  @Qualifications
  Scenario: Add Employee Qualifications
    When I navigate Qualifications I click first Add button
    And I enter the Work Experience details
      | Company | Job Title | From       | To         |
      | Mayo    | Developer | 2009-01-01 | 2019-01-01 |
    When I click on Save for adding work experience
    Then I see Work Experience has been added
    When I click Add button I enter education details
      | Level | Institute | Major/Specialization | Year | GPA/Score | Start Date | End Date   |
      | MBA   | Harvard   | IT                   |    5 |         4 | 2005-01-01 | 2010-05-01 |
    And I click on Save button for adding education
    Then I see education details has been added
    When I click Add button I enter Skills details
      | Skill    | Years of Experience |
      | DataBase |                   5 |
    And I click on Save button for adding skills
    Then I see Skills details has been added
    When I click Add button I enter Language details
      | Language | Fluency  | Competency |
      | Russian  | Speaking | Good       |
    And I click on Save button for adding languages
    Then I see Language details has been added
    When I click Add button I enter License details
      | license Type | license Number | Issued Date | Expiry Date |
      | Private      |       55500555 | 2020-01-20  | 2022-01-20  |
    And I click on Save button for adding license
    Then I see License details has been added
