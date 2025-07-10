Feature: Reservation search page

Background:
* url 'https://ccerrts-dev.callthecar.com'
* header Cookie = 'ASP.NET_SessionId=qymwvean5hmmhhysbt5pc0rw; CCERRTS_INT_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6Imhrb3NodGkiLCJpc0FjdGl2ZSI6IjEiLCJuYW1laWQiOiJlNjNlMTU4Yi02MmQ0LTQyODYtYTgwZS03MzVkOWM5N2Q2ZmQiLCJlbWFpbCI6Imhrb3NodGlAY2FsbHRoZWNhci5jb20iLCJ1c2VyVHlwZSI6IjEiLCJjbGllbnRJZHMiOiIxMiw2LDEzLDExLDE0LDUsOCwzLDE2LDEwLDQsOSIsImRlc2lnbmF0aW9uSWQiOiIzIiwiZGVzaWduYXRpb25OYW1lIjoiRGlyZWN0b3Igb2YgT3BlcmF0aW9ucyIsIm5iZiI6MTczNjQwMjczOCwiZXhwIjoxNzM2NDM4NzM4LCJpYXQiOjE3MzY0MDI3Mzh9.14Ar8Nyw9te5Hsi4Y4hIjU7qrvotCG_rV8-3uS4kYl8; UserDetailCookie=UserDetail=aGtvc2h0aSxRd2VydHlAMTIzNDUsVHJ1ZQ==; __RequestVerificationToken=cw0P9SgQnEKjbssahc0KP113ZXB0cqNkVKKKyo6svl5eIMdQMwOMAVmMfu3S7YM2VW9nWzbP4nLCO3Hou_s0YguVGsGPQv0QQamDg-N_tSA1; .AspNet.ApplicationCookie=J-tu-EaIv2ACIhWyrtUI4fuIiuUEindpg4p-jPR0rhxMUMSq9rUeh3M3eZ3SauSLN8LSp2lmu_wwFFOSMu83xUhOQNQehQ3mNFRWNH_Nrp3Nyzj3Ew-fJc4HgG6wbmdpENrgAIR01yAHL3bpo-t_fko0mSZ-cyI4Vnttfpif1eTPZgBaMxIu-ay3gve2OOS-J0QxHlmNzAAEveBSSGwLU5VqrO1titBxD31cO9nYmRcif97PKhgDk1ZYaQ48W_Gu3GdtK10rhdsH3tiFZb3wQYwmlWMQVTQvxFYrYFf2D5_Z5W_XVdDrfMQPzVlbyhXqPq4dT95YANO9NPUA4dqpYQWT1PXqIR8nrVCWyOcT6yMj-kXXwOJuQLpAfc2GrFg2E9kET8Qj5yucoiK_403oEDnWBDw9JuGl9_Y4vuPQ6A3fc9sdfVW0hsfaiUftSZWNcRD677kbopTXlxMo2Jx-o01uXENGVun-9PntQltS1aZONtUGXIRi6BWBJDO2yUivpJwnWubfL-l2NkkOqUKfnQ-luSpE7Ynvv0QTJSOYbSqRaqstSG_MYj61xlDs4X1k'

Scenario: search a Reservation by DOS
  Given path '/Reservation/Reservation/ReservationRead'
   And request 
  """
   { 
      "page": "1", 
      "pageSize": "20", 
      "DateOfService": "12/10/2024" 
   }
      """
  When method POST
  Then status 200
  Then print response

Scenario: Get all LOS list
Given path '/Reservation/Reservation/GetAllLevelOfServiceList'
When params { "memberId": "56447" }
When method GET
Then status 200
Then print response

Scenario: Read Scorecard Scores For Trip
  Given path '/Member/Member/ReadScorecardScoresForTrip'
   And request 
  """
   { 
      "memberId": "56447", 
      "tripId": "7798229"
   }
      """
  When method POST
  Then status 200
  Then print response

Scenario: Get all Subcontractor
Given path '/Member/Member/SubContractor'
When method GET
Then status 200
Then print response

Scenario: Check member FWA status
Given path '/Member/Member/CheckMemberFWAStatus'
When params { "memberIdFWA": "56447" }
When method GET
Then status 200
Then print response

Scenario: Get deceased date for member
Given path '/Member/Member/GetDeceasedDateForMember'
When params { "memberId": "93686989C" }
When method GET
Then status 200
Then print response

Scenario: Get settings
Given path '/Common/GetSetting'
When params { "settingName": "ShowTripLimitModal", "clientId": "10" }
When method GET
Then status 200
Then print response

Scenario: Get treatment type list
Given path '/Common/GetTreatmentTypeList'
When params { "clientId": "10" }
When method GET
Then status 200
Then print response

Scenario: Get Get settings wuth setting name
Given path '/Common/GetSetting'
When params { "settingName": "WaitTimeTags" }
When method GET
Then status 200
Then print response

Scenario: Get member data
Given path '/Reservation/Reservation/GetMemberData'
When params { "memberId": "56447" }
When method GET
Then status 200
Then print response

Scenario: Get client detail
Given path '/Client/Client/GetClientDetailJson'
When params { "id": "10" }
When method GET
Then status 200
Then print response

Scenario: Get authorisation records
Given path '/Member/Member/GetAuthorizationRecords'
 And request 
  """
   { 
      "page": "1",
      "pageSize": "500",
      "memberId": "56447",
      "clientId": "10",
      "HealthPlanIdentifier": "LAC", 
      "memberClientId": "93686989C"
   }
      """
When method POST
Then status 200
Then print response