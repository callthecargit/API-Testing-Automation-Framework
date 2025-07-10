Feature: Edit member page

Background:
* url 'https://ccerrts-dev.callthecar.com'
* header Cookie = 'ASP.NET_SessionId=aazeq3uzi4aplhxdt44sk5hy; CCERRTS_INT_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6Imhrb3NodGkiLCJpc0FjdGl2ZSI6IjEiLCJuYW1laWQiOiJlNjNlMTU4Yi02MmQ0LTQyODYtYTgwZS03MzVkOWM5N2Q2ZmQiLCJlbWFpbCI6Imhrb3NodGlAY2FsbHRoZWNhci5jb20iLCJ1c2VyVHlwZSI6IjEiLCJjbGllbnRJZHMiOiIxMiw2LDEzLDExLDE0LDUsOCwzLDE2LDEwLDQsOSIsImRlc2lnbmF0aW9uSWQiOiIzIiwiZGVzaWduYXRpb25OYW1lIjoiRGlyZWN0b3Igb2YgT3BlcmF0aW9ucyIsIm5iZiI6MTc1MDkzNzUzOCwiZXhwIjoxNzUwOTczNTM4LCJpYXQiOjE3NTA5Mzc1Mzh9.SToKvObBGk13oORgWj7C192wr5spKKmfOGKF0BZQt4g; UserDetailCookie=UserDetail=aGtvc2h0aSxUcnVl&Expires=6/27/2025 4:32:18 AM; .AspNet.ApplicationCookie=53gshLqr6KeaDnshf88PEc4OK8zd2CuxU0h4N-CPBU7UycO05Th4ybrsOaJz36f-iR3XgjyiXk-PDTgNg6UjasKfjDH_6BJErTSd06Nq_CT9T7D50Du0JCSdmd2qB0Vwt_lJRakPIeR2FNw61p_KD_UBOaWtigFYyXoPv4c9AxDyAwYMSTVmHl0LsB1zClYIAbfDYcsTS9C7z0jCtJv_MiqankfzSiDWYqwHKhAurwYcEy5W2uvh0dzIvfVOGIs-lodQwyxIEn_7Pc7tKUux22Vy5k5UZaePoMm8tH0SM-UcxRszkKTM7-WEtDxzmIrKZRXegOmHtSVBhi9_WJ072bdazplivj891mTVqAUJjg6fWYaYKz2t53az8Zrccr5z1vr-loNHyuPk1PwmyBDzwhZY7ry3Hm1R2BeTBaXvgKb0W55qhXt-Os9kDC9Buwyq7LNY6mWJvucuL3xlam8uNNt-Z-ovG7idUcXoErFjjJRbS80EQ3uyrZ48TcoNej-zF2g-PRv9t2Rj39voiIkTODeF3rrhutOLyMq1jxirpu9qLY1GtP7okoUKHo9gKEAwsWC71C3QxdtYpkNMo1MPTO6dNsbtH0-2SblBzL7n3Wg'

# Scenario: Edit a member // This scenario is not working due to issue in the API
# Given path '/Member/Member/Detail'
# And request 
# """
#    { 
#       "Mode": "Detail", 
#       "userType": "1", 
#       "emailId": "hkoshti@callthecar.com",
#       "__RequestVerificationToken": "F0STT5tiWUrd6_cmFk5cKLYzBsIujFFHMay9c9fntlZVAM7GruunTjhkKRriGoAccou_Y1O9c0jXWeBuXi-Y5OmqzGxjBI9nOi4HkIPbP57uzVAeA6rkjg0De1QlsQk6rsS2sbKIfFRT1PVsF4dY_g2",
#       "memberId": "230947",
#       "checkNoteAdd": "1",
#       "Member.Member.MemberId": "9898989",
#       "Member.Member.FirstName": "Any name",
#       "Member.Member.LastName": "washington", 
#       "Member.Member.IsActive": "true",
#       "Member.Member.IsActive": "false",
#       "Member.IsVip": "false",
#       "Member.MemberMOT.isActive": "false",
#       "Member.MemberMOT.memberMOTId": "0",
#       "Member.MemberMOT.memberId": "230947",
#       "Member.Member.Gender": "1",
#       "Member.Member.Pronoun": "Georgina",
#       "Member.Member.PrefferedGender": "1",
#       "Member.Member.DOB": "02/01/2000",
#       "Member.Member.Age": "24",
#       "Member.Member.Heightfeet": "5",
#       "Member.Member.HeightInches": "5",
#       "Member.Member.Weight": "55",
#       "Member.Member.ClientId_input": "Blue Shield of California Promise Health Plan",
#       "Member.Member.ClientId": "1",
#       "Member.MailingAddress.AddressLine1": "1570 E Colorado Blvd",
#       "Member.MailingAddress.City": "Pasadena",
#       "Member.MailingAddress.StateId_input": "CA",
#       "Member.MailingAddress.StateId": "5",
#       "Member.MailingAddress.Zipcode": "91106-2003",
#       "Member.MailingAddress.County": "Los Angeles",
#       "Member.MailingAddress.latitude": "34.1440352",
#       "Member.MailingAddress.longitude": "118.1191286",
#       "Member.MailingAddress.IsAddressIdentified": "true",
#       "Member.MailingAddress.IsAddressIdentified": "false",
#       "Member.Member.IsPhysicalAddressSame": "true",
#       "Member.Member.IsPhysicalAddressSame": "false",
#       "Member.PhysicalAddress.AddressLine1": "1570 E Colorado Blvd",
#       "Member.PhysicalAddress.City": "Pasadena",
#       "Member.PhysicalAddress.StateId_input": "CA",
#       "Member.PhysicalAddress.StateId": "5",
#       "Member.PhysicalAddress.Zipcode": "91106-2003",
#       "Member.PhysicalAddress.County": "Los Angeles",
#       "Member.PhysicalAddress.latitude": "34.1440352",
#       "Member.PhysicalAddress.longitude": "118.1191286",
#       "Member.MailingAddress.IsAddressIdentified": "true",
#       "Member.MailingAddress.IsAddressIdentified": "false",
#       "Member.Member.PrimaryContactNo": "(898) 709-0787",
#       "Member.Member.PrimaryContactType": "1",
#       "Member.Member.SecondaryContactNo": "(898) 709-0790",
#       "Member.Member.Email": "hk3455@gmail.com",
#       "Member.Notes.NoteText": "vip",
#       "Member.Notes.NoteCategoryId": "0",
#       "Member.IsAutomatedCallTextOptIn": "true",
#       "Member.IsAutomatedCallTextOptIn": "false",
#       "Member.IsAutomatedEmailOptIn": "true",
#       "Member.IsAutomatedEmailOptIn": "false",
#       "checkNote": "1"
#    }
# """
# When method POST
# Then status 200
# Then print response

# Scenario: Add a new preference // This scenario is not working due to issue in the API
# Given path '/Member/Member/Detail'
# And request 
# """
#    { 
#       "Mode": "Detail", 
#       "userType": "1", 
#    }
# """
#   When method POST
#   Then status 302
#   Then print response

Scenario: Add a new note 
Given path '/Member/Member/CreateNotes'
And request 
"""
   { 
      "memberId": "231052", 
      "ClientId": "6",
      "memberClientId": "8384383",
      "HealthPlanIdentifier": "AMG  ",
      "NoteCategoryId": "137",
      "NoteId": "0",
      "UserId": "0",
      "NoteText": "New note addition",
      "IsActive": "0"
   }
"""
When method POST
Then status 200
Then print response
And match response.Data[0].NoteText == 'New note addition'


# Scenario: Edit a note // This scenario is not working due to issue in the UI
# Given path '/Member/Member/'
# And request 
# """
#    { 
#       "memberId": "Detail", 
#       "ClientId": "1",
#       "memberClientId": "0",
#       "HealthPlanIdentifier": "vip",
#       "NoteCategoryId": "2021-09-01",
#       "NoteId": "0",
#       "UserId": "0",
#       "NoteText": "12:00:00",
#       "NoteType": "1",
#       "IsActive": "0"
#    }
# """
#   When method POST
#   Then status 200
#   Then print response

Scenario: Get change history view  
Given path '/Member/Member/ReadAudithistory'
And request 
"""
   { 
      "page": "1", 
      "pageSize": "10",
      "memberId": "229933",
      "ClientId": "11",
      "memberClientId": "TestBSC",
      "HealthPlanIdentifier": "TRIO ",
      "designationId": "3"
   }
"""
When method POST
Then status 200
Then print response
And match response.Data[0].Changedby == 'arun.r'

# Scenario: Add a new complaint // This scenario is not working due to issue in the API
# Given path '/api/v1/complaints'
# And request 
# """ 
# {
#   "ComplaintInfoId": "0",
#   "ComplaintDate": "11/30/2024",
#   "MemberName": null,
#   "MemberId": "229933",
#   "AgainstName": "null",
#   "AssignedTo": "3",
#   "Cap": null,
#   "CapCompletedDate": null,
#   "CapCreatedDate": null,
#   "CapStatus": null,
#   "ClientCaseDueDate": "11/14/2024",
#   "ClientCaseId": "558787",
#   "ClosingComments": null,
#   "ComplaintAgainstTypeId": "5",
#   "ComplaintDetail": "new addition",
#   "ComplaintReasonId": [1, 3],
#   "ComplaintReasonOtherText": null,
#   "ComplaintReasonSubId": [],
#   "ComplaintSourceTypeId": "6",
#   "ComplaintStatusId": "1",
#   "ComplaintTypeId": "3",
#   "ComplaintTypeSub": "PQI - Life Sustaining",
#   "Findings": null,
#   "HealthPlan": "New HP",
#   "HealthPlanEmail": ["health@111gmail.com"],
#   "References": [{"memberId": "17829"}],
#   "SourceName": "Elder driver",
#   "SourceNumber": "(989) 890-7790",
#   "SourcePhone": "9898907790",
#   "SummaryOfFindings": null,
#   "SupervisorId": null,
#   "ClientId": "vip",
#   "MemberClientId": "900922",
#   "HealthPlanIdentifier": "AMG",
#   "Page": "1",
#   "PageSize": "10"
# }

# """
# When method POST
# Then status 200
# Then print response

# Scenario: Adding a scorecard // This scenario is not working due to scorecard facility not available
# Given path '/Member/Member/ReadAudithistory'
# And request 
# """
#    { 
#      }
# """
# When method POST
# Then status 200
# Then print response

# Scenario: Create a member file // This scenario is not working due to issue in the API
# Given path '/Member/Member/CreateMemberFile'
# And request 
# """
#    {
#    "FileTypeId": "1",
#    "MemberId": 229933,
#    "EffectiveStart": "2024-11-06",
#    "EffectiveEnd": "2024-11-06",
#    "Status": "Approved",
#    "__RequestVerificationToken": "wRFYGtQqbCRASQtWDcvhU1WbxeWavv4zypnwGY2PCA8bA84syD8X-Ns4gKZfU4UHD2PPAHeEFWGqCucFu2l1sWau8RhZ94oREecZJqKOCDn53xp9tgSAGUp2I16dCU0X_qZFhkCNbRhj9hQef5KbNQ2",
#    "uploadFile": "(binary)"
#     }
# """
# When method POST
# Then status 200
# Then print response

Scenario: Get member cost override
Given path '/Member/Member/GetMemberCostOverrides'
And request 
"""
   {
      "page": "1", 
      "pageSize": "10", 
      "MemberID": "229933" 
    }
"""
When method POST
Then status 200
Then print response
And match response.Data[0].Override.CreatedBy == 'hkoshti'


# Scenario: Add member new cost override // This scenario is not working due to issue in the API
# Given path '/Member/Member/GetMemberCostOverrides'
# And request 
# """
# {
#    "memberOverride": {
#       "Override": {
#          "CostAdjustment": "10",
#          "CostOverrideId": 0,
#          "MemberId": "229933",
#          "SubcontractorId": "553",
#          "LevelOfServiceId": "54",
#          "EndDate": "11/30/2024",
#          "StartDate": "11/30/2024",
#          "PaymentMethodId": "2",
#          "StandingOrders": []
#       }
#    }
# }
# """
# When method POST
# Then status 200
# Then print response