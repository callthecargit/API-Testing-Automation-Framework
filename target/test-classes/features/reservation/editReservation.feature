Feature: Reservation edit page

Background:
* url 'https://ccerrts-dev.callthecar.com'
* header Cookie = 'ASP.NET_SessionId=aazeq3uzi4aplhxdt44sk5hy; CCERRTS_INT_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6Imhrb3NodGkiLCJpc0FjdGl2ZSI6IjEiLCJuYW1laWQiOiJlNjNlMTU4Yi02MmQ0LTQyODYtYTgwZS03MzVkOWM5N2Q2ZmQiLCJlbWFpbCI6Imhrb3NodGlAY2FsbHRoZWNhci5jb20iLCJ1c2VyVHlwZSI6IjEiLCJjbGllbnRJZHMiOiIxMiw2LDEzLDExLDE0LDUsOCwzLDE2LDEwLDQsOSIsImRlc2lnbmF0aW9uSWQiOiIzIiwiZGVzaWduYXRpb25OYW1lIjoiRGlyZWN0b3Igb2YgT3BlcmF0aW9ucyIsIm5iZiI6MTc1MDkzNzUzOCwiZXhwIjoxNzUwOTczNTM4LCJpYXQiOjE3NTA5Mzc1Mzh9.SToKvObBGk13oORgWj7C192wr5spKKmfOGKF0BZQt4g; UserDetailCookie=UserDetail=aGtvc2h0aSxUcnVl&Expires=6/27/2025 4:32:18 AM; .AspNet.ApplicationCookie=A09VxdV7dSoyrzl-wE1VvHlLLWVi-bxVPEiMzNVeXbLPpgec5qToiHSHOzex4i2wcvoi68SHLMECKpYZoo4kMhLrPYntA7Ka7ntDNTsTf5uBj2oMkwrdaMuRzd31lQ5blhnHK830mp6vkNtbGSm9QK6ucAlETuZPzcJ6D9VlvY-48XrnYAvHZEG7pF8KPxzEM7SPzeq3wCIGVhRGKkl0MnoGPRCKeXtCkF6lMrFCItj1Fee9C1v88o1lOEVPP2I4CRqevjLvwecnQjRZDpqnZEHY_sl9AeS1AhKBPtp9BplDGPOv0tTo0LsJAP4eJysSLB9VBSjsWP0bvBAFQ-76hjXPNl0T01NRC4iUiMGT0UWSKUqBju6r07EN50zEp2sQNaBCEqJDtGlWB3VcUAm8KwRwZ2Rcv2NAGeeEv4re6htkq5IhevNhvMbpeRwAX42mvMe1DOUgZQtddC89ntDHsUuAeWgpW1thM8ZK1lQeJsCiFFgcslTvw7cC_zVolgzzctYaCYz0Jpy7Cu34jsEv_gdTKXcfCnOl__f6a_g12-bzFTmb3v71UrJpZU-mBLBAEc6zg5ISQB4S9lW06vCxLg; __RequestVerificationToken=tqoihMmpoIgtUzbxUoav5onRr2gAASZenkowbBFjloqRlkplVUliHGLH-naBVd6sZtWWXXkW_JdK5Lco-7MoiBF_gDeNcPJ9z6OM-aFB9oQ1'

# Scenario: Read reservation notes
#   Given path '/Reservation/Reservation/ReadNote'
#   When request 
#   """
#    { 
#       "page": "1",
#       "pageSize": "10",
#       "tripId": "8266472",
#    }
#   """
#   When method POST
#   Then status 200
#   Then print response
#   And match each response.Data[*].CreatedBy == 'hkoshti'


Scenario: Get Note category list
  Given path '/Common/GetNoteCategoryList'
  When params { "filter[logic]: and" }
  When method GET
  Then status 200
  Then print response

#   Scenario: Create a reservation note
#   Given path '/Reservation/Reservation/CreateNotes'
#   When request 
#   """
#  {
#     "NoteId": 0,
#     "TripId": 7825698,
#     "TriplegSeqNumNew": 1,
#     "NoteCategoryId": 137,
#     "NoteText": "New note addition",
#     "CreatedDate": "1/16/2025 5:05:31 PM",
#     "ModifiedDate": "1/16/2025 5:05:31 PM",
#     "IsActive": 0,
#     "subcontractorId": 0,
#     "TripLegId": 0
#   }
#   """
#   When method POST
#   Then status 200
#   Then print response

# Scenario: Check for supervisor authorisation
#   Given path '/Account/SupervisorAuthorization'
#   When request 
#   """
#  {
#     "__RequestVerificationToken": "lJOj2rC6oQe8fivYFzTrXoRjWfXEKwJ1D_KtjrAdoQ_Ad3qZlW9folGRGUk5waoIIjMhpmOqjCJQEgaouKJljp5wLzg7HauKCYHGOQ-72lCPw3QWfgPpVtTugP6-tfL52Dj0RQ7_xEm-iAVH5aHf-Q2",
#     "UserName": "arun.r",
#     "Password": "Ctc@6666"
#   }
#   """
#   When method POST
#   Then status 200
#   Then print response

  Scenario: View all complaints
  Given path '/api/v1/complaints'
  When params { "tripId": "7825698" }
  When method GET
  Then status 200
  Then print response

  # Scenario: Get complaint type
  # Given path '/Reservation/Reservation/GetComplaintType'
  # When method GET
  # Then status 200
  # Then print response

  # Scenario: Get complaint reason sub
  # Given path '/Reservation/Reservation/GetComplaintReasonSub'
  # When method GET
  # Then status 200
  # Then print response

# Scenario: Get cap status list
#   Given path '/Reservation/Reservation/GetCapStatusList'
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Get supervisor list
#   Given path '/Reservation/Reservation/GetSupervisorList'
#   When method GET
#   Then status 200
#   Then print response

# Scenario: Read trip audit history
#   Given path '/Reservation/Reservation/ReadTripAudithistory'
#   When request 
#   """
#  {
#     "tripId": "7825698"
#   }
#   """
#   When method POST
#   Then status 200
#   Then print response

Scenario: Read cache OST
  Given path '/Reservation/Reservation/ReadCacheOST'
  When request 
  """
 {
    "tripId": "7825698"
  }
  """
  When method POST
  Then status 500
  Then print response

# Scenario: Audit log read
#   Given path '/Reservation/Reservation/AuditLogRead'
#   When request 
#   """
#  {
#     "tripId": "7825698"
#   }
#   """
#   When method POST
#   Then status 200
#   Then print response

# Scenario: Ride history read
#   Given path '/Reservation/Reservation/RideHistoryRead'
#   When request 
#   """
#  {
#     "tripId": "7825698"
#   }
#   """
#   When method POST
#   Then status 200
#   Then print response

Scenario: Read active blocked addresses
  Given path '/Reservation/Reservation/ActiveBlockedAddressRead'
  When request 
  """
  {
     "page": "1"
      "pageSize": "10",
      "clientId": "5"
  }
  """
  When method POST
  Then status 200
  Then print response