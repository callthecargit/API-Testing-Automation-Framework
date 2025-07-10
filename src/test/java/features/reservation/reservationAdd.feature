Feature: Reservation add page

Background:
* url 'https://ccerrts-dev.callthecar.com'
* header Cookie = 'ASP.NET_SessionId=qymwvean5hmmhhysbt5pc0rw; __RequestVerificationToken=cw0P9SgQnEKjbssahc0KP113ZXB0cqNkVKKKyo6svl5eIMdQMwOMAVmMfu3S7YM2VW9nWzbP4nLCO3Hou_s0YguVGsGPQv0QQamDg-N_tSA1; CCERRTS_INT_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6Imhrb3NodGkiLCJpc0FjdGl2ZSI6IjEiLCJuYW1laWQiOiJlNjNlMTU4Yi02MmQ0LTQyODYtYTgwZS03MzVkOWM5N2Q2ZmQiLCJlbWFpbCI6Imhrb3NodGlAY2FsbHRoZWNhci5jb20iLCJ1c2VyVHlwZSI6IjEiLCJjbGllbnRJZHMiOiIxMiw2LDEzLDExLDE0LDUsOCwzLDE2LDEwLDQsOSIsImRlc2lnbmF0aW9uSWQiOiIzIiwiZGVzaWduYXRpb25OYW1lIjoiRGlyZWN0b3Igb2YgT3BlcmF0aW9ucyIsIm5iZiI6MTczNjUwMzM0NSwiZXhwIjoxNzM2NTM5MzQ1LCJpYXQiOjE3MzY1MDMzNDV9.E7hbs6kCGhn3akb2KAJUGzmnGcb7a_vMu_COlF0UEqs; UserDetailCookie=UserDetail=aGtvc2h0aSxRd2VydHlAMTIzNDUsVHJ1ZQ==; .AspNet.ApplicationCookie=cf83pI0EoKZOXEcly9IIoBs1NMAjZY71hWFus01BaVjgBc0NL7EEWgM1mk9xc7zV1mC3_2MbqjOdxiNc9qOiAWZ2cCz03VEtPc9YBUEz3SLp7j77uC0z2F_Rzl36wxzIE1PhuwKyccQ3L4NrLjMb242bkJ4F6Ntr9Nti216uORA8ofRg4d-ZCI1FnnAvPZtFONmmF6Zt5sNlba21IXEqPueWwrQ3kU3AzC-94YI80miA1rlcXyzffF-uKVsyX5mxYvNCZJSokVbX1jQcNcaBPg3UgoLlUdazp8sKjsXIZZemnJ1YpkpHSwiGI7NVhd5kWqQ8eCc0LKj6KvR4EraYRpr8nKQufs13vbKFKIN7NGPjB5drt3TCk8ffEhWdTwVMmESb1eJGqjWJHr4QQqxGovOXBseDG4OnaL50u9LtiHBf4ikIi4kFLZM74olmoRFTF6l7PJt68zyjpcwoDU0aoMO5EaSQae8JCTKWxPp_JfpUsR5eBtn2010ANrwgtcIMvMeBfVZLUqnju2KzFdx2W0R_9NM1mUEtehNnZBjYEflaHHIU2mujzTTpGfp5gxIi'

# Scenario: Get member id list
#   Given path '/Reservation/Reservation/GetMemberIdList'
#   When params { "text": "test", "memberDob": "", "filter[filters][0][value]": "test", "filter[filters][0][operator]": "contains", "filter[filters][0][field]": "Member.MemberId", "filter[filters][0][ignoreCase]": "true", "filter[logic]": "and" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get Doctor speciality list
#   Given path '/Common/GetDoctorSpecialityList'
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get Subcontractor
#   Given path '/Member/Member/SubContractor'
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get Member data
#   Given path '/Reservation/Reservation/GetMemberData'
#   When params { "memberId": "230211" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get setting name
#   Given path '/Common/GetSetting'
#   When params { "settingName": "WaitTimeTags" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get Deceased date for member
#   Given path '/Member/Member/GetDeceasedDateForMember'
#   When params { "memberId": "Test456" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get Treatment type list
#   Given path '/Common/GetTreatmentTypeList'
#   When params { "clientId": "12" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get all LOS list
#   Given path '/Reservation/Reservation/GetAllLevelOfServiceList'
#   When params { "memberId": "230211" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: :Check member FWA status
#   Given path '/Member/Member/CheckMemberFWAStatus'
#   When params { "memberIdFWA": "230211" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Add a new reservation
# Given path '/Reservation/Reservation/Create'
# And request 
# """
#    {
#    "TripLegId": "0",
#    "TripId": "0",
#    "Status": "Unscheduled",
#    "Willcall": "true",
#    "WaitTime": "0",
#    "TreatmentTypeId": "263",
#    "TreatmentTypeName": "test05",
#    "DoctorName": "Ronny",
#    "DoctorSpecialityId": "1",
#    "DoctorSpecialityName": "Addiction psychiatrist",
#    "PickupAddressLine1": "26792 Cypress St",
#    "PickupCity": "Cypress",
#    "PickupStateId": "5",
#    "PickupZipcode": "92346-3538",
#    "IsPickupAddressIdentified": "true",
#    "PickupType": "2",
#    "PickupName": "Member residence",
#    "PickupPhone": "(876) 567-8909",
#    "DropAddressLine1": "4647 Zion Ave",
#    "DropApartment": "ROOM D9",
#    "DropCity": "San Diego",
#    "DropStateId": "5",
#    "DropZipcode": "92120-2507",
#    "IsDropAddressIdentified": "true",
#    "DropType": "1",
#    "DropFacilityId": "3811",
#    "DropName": "KAISER FOUNDATION HOSPITAL - SAN DIEGO - ZION",
#    "DropPhone": "(908) 899-9887",
#    "ModifiedDate": "12/11/2024 5:23:31 PM",
#    "IsActive": "0",
#    "PickUplongitude": "-117.2198266",
#    "PickUplatitude": "34.114242",
#    "DropOfflongitude": "-117.0954408",
#    "DropOfflatitude": "32.7915472",
#    "Vendor": "0",
#    "AuthorizationNumber": "ANR 55",
#    "Duration": "1 hour 44 mins",
#    "DurationInSecond": "6257",
#    "IsLockedFlag": "false",
#    "DropAddressFormatted": "4647 Zion Ave, San Diego, CA 92120, USA"
# }

# """
#   When method POST
#   Then status 200
#   Then print response

# Scenario: Check if trip exists
#   Given path '/Reservation/Reservation/IsTripExist'
#   When params { "dateOfService": "01/11/2025", "memberId": "230211" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get member preferred data by Id
#   Given path '/Reservation/Reservation/GetMemberPreferredDataById'
#   When params { "dateOfService": "01/11/2025", "memberId": "230211" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Check allowed client for reservation of trip
#   Given path '/Reservation/Reservation/CheckAllowedClient'
#   When params { "subContractorId": "109", "clientId": "12" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get LOS questionnaires
#   Given path '/Common/GetLOSQuestionnaire?clientId=12&los=test97'
#   When params { "clientId": "12", "los": "test97" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get Authorisation records
#   Given path '/Member/Member/GetAuthorizationRecords'
#   When request 
#   """
#    { 
#       "page": "1",
#       "pageSize": "500",
#       "memberId": "230211",
#       "memberClientId": "Test456",
#       "clientId": "12",
#       "HealthPlanIdentifier": "AHF"
#    }
#   """
#   When method POST
#   Then status 200
#   Then print response

# Scenario: Get Doctor info filter by input
#   Given path '/Common/GetDoctorInfoFilter'
#   When params { "text": "San", "filter[filters][0][value]": "san", "filter[filters][0][operator]": "contains", "filter[filters][0][field]": "Name", "filter[filters][0][ignoreCase]": "true", "filter[logic]": "and" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get Facility address exist
#   Given path '/Common/FacilityAddressExist'
#   When params { "addressLine1": "26792 Cypress St", "city": "Highland", "zip": "92346", "stateId": "5" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get Facility name list
#   Given path '/Common/GetFacilityNameList'
#   When params { "text": "Hospital", "filter[filters][0][value]": "hospital", "filter[filters][0][operator]": "contains", "filter[filters][0][field]": "FacilityName", "filter[filters][0][ignoreCase]": "true", "filter[logic]": "and" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Check allowed LOS for Subcontractor
#   Given path '/Reservation/Reservation/CheckAllowedLevelOfServiceForSub'
#   When params { "subContractorId": "90", "clientId": "60" }
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Read for member exclusions
#   Given path '/Member/Member/Member_ExclusionsRead'
#   When request 
#   """
#    { 
#       "memberId": "230211"
#    }
#   """
#   When method POST
#   Then status 200
#   Then print response

# Scenario: Validate LADOT zipcode
#   Given path '/Reservation/Reservation/ValidateLADOTZipcode'
#   When request 
#   """
#    { 
#       "zipcode": "92346"
#    }
#   """
#   When method POST
#   Then status 200
#   Then print response

Scenario: Insert Trip
  Given path '/Reservation/Reservation/InsertTrip'
  When request 
  """
   {"model":{"Trip":{"TripId":"7850272","MemberId":"143190","SchedularName":"name","AuthorizationId":"0","Remaining":"","RemainingLimit":"","Status":"","SchedularRelationId":"3","SchedularPhone":"(123) 454-3212","LevelOfServiceId":"70","LevelOfService":"Wheelchair","AdultEscortNum":"3","ChildEscortNum":"1","Tags":[119],"DateOfService":"01/11/2025","ClientId":"13","BrokerId":"1","AuditHistoryMessage":"","CreatedDate":"01/10/2025","Duration":"","TransitFarePickupAtOffice":false},"Tripleg":[{"AppointmentTime":null,"AuthorizationNumber":"nar","CreatedDate":"01/10/2025","DoctorName":"doc","DoctorSpecialityId":1,"DropAddressId":6190868,"DropAddressLine1":"3005 Main St","DropApartment":"419","DropCity":"Los Angeles","DropLocationComment":"","DropName":"Member residence","DropPhone":"(424) 567-1390","DropStateId":5,"DropType":1,"DropZipcode":"90007","DropCounty":"Los Angeles County","DropOfflongitude":"-118.2710205","DropOfflatitude":"34.0215482","DropFacilityId":0,"DropOffTimezoneId":null,"DropOffTimezoneName":null,"DropOffRawOffset":null,"DropOffDstOffset":null,"EstMiles":1.74,"Duration":"6 mins","DurationInSecond":0,"IsDropAddressIdentified":true,"IsPickupAddressIdentified":true,"PickupAddressId":6190866,"PickupAddressLine1":"5005 Main St","PickupApartment":"419","PickupCity":"Los Angeles","PickupLocationComment":"","PickupName":"Member residence","PickupPhone":"(424) 567-1390","PickupStateId":5,"PickupTime":"","PickupType":2,"PickupZipcode":"90037-4601","PickupCounty":"Los Angeles County","PickupFacilityId":0,"PickUplongitude":"-118.2741513","PickUplatitude":"33.9969407","PickUpTimezoneId":null,"PickUpTimezoneName":null,"PickUpRawOffset":null,"PickUpDstOffset":null,"SubcontractorId":0,"TreatmentTypeId":395,"TreatmentTypeName":"Orthotic Services and pick-up of orthotics","WaitTime":0,"WaitTimeNote":null,"Willcall":true,"DropOffTime":null,"ActivationTime":"","VendorETA":null,"Status":"Unscheduled","IsLockedFlag":false,"TransitFare":null,"PickupAddressFormatted":null,"DropAddressFormatted":null}]}}

  """
  When method POST
  Then status 200
  Then print response