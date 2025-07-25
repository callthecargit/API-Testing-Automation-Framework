Feature: Create standing order page

Background:
* url 'https://ccerrts-dev.callthecar.com'
* header Cookie = 'ASP.NET_SessionId=eizjxc5td2mp5gd2ckozij3g; __RequestVerificationToken=4R7i5gzYELrjBV8JqjE7w4WtLnSywqTcgYG-LzRht-FXIqdKTl51H2Ys_bUJrEbWws-lM4bsksXU1UVDx54MCsFxFH25Zc00axRk2S8haoY1; CCERRTS_INT_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6ImFydW4uciIsImlzQWN0aXZlIjoiMSIsIm5hbWVpZCI6IjAxMzRhNzNjLTdlMTMtNGI5MS1iMDJmLWZhNTAwY2ZlMjkxOSIsImVtYWlsIjoiYXJ1bi5yQGNhbGx0aGVjYXIuY29tIiwidXNlclR5cGUiOiIxIiwiY2xpZW50SWRzIjoiMTIsNiwxMywxLDExLDE0LDUsOCwzLDE2LDEwLDQsNyw5IiwiZGVzaWduYXRpb25JZCI6IjMiLCJkZXNpZ25hdGlvbk5hbWUiOiJEaXJlY3RvciBvZiBPcGVyYXRpb25zIiwibmJmIjoxNzUzMjczNjEzLCJleHAiOjE3NTMzMDk2MTMsImlhdCI6MTc1MzI3MzYxM30.dVh-pv6faYd_9Xe_VvestJjQ_4yvhrAzY5-R1Mv2bZI; UserDetailCookie=UserDetail=YXJ1bi5yLFRydWU=&Expires=7/24/2025 5:26:53 AM; .AspNet.ApplicationCookie=V2P6a4QHYVBm2QX4Xq9Vvq7ahpZidHaJAkMP0d71jn1TLUz8cltlF6mKVCHVi9yPbmkqwUgbh9LoyC--Nb7jmtcgiPCVFZaI_8YXGMEchD2-u63hBqS6e7-73WGatM6EPUW0_Z_BQ6NG4cUuRYswrCphJaXNA4muQoTZy895Je5ZvsmZQCGCwTndzM41j0Leo4tNRODnLq6vjnBgWFrSnvQYHyoVgGgj9q6BssoYn1hhz86G_ZD43KueEiVXU8PpkPP-q1Qv6E2wqP0xIlHv42r90J81boguODsurDkZ8IAlRa2Z00MWELzY_OH2WkZByEZGcF6nv7Kxf-wEh96TDQMOMcPWzMN6hE7P5ADEYtxAtKseCpc9gCcpEwGrbD_llagA9GdTwNYPhzkioh8-mBGwdf0UNLl3Yd9UlrJ6frh553V-M0aSMSX2p8HpIkydlcLVDITpbAQt8bK2F1C7UoWqeZY78EliFnrXoMwvVYW7GFcF9Rcu2ep_P1xt5KmTHC2OtyVdEcb6WjPsu1Ooh4qAgajRN5mPgum-0og1mHU'

# Scenario: Get create standing order create page
# Given path '/Reservation/StandingOrder/Create'
# When method GET
# Then status 200
# Then print response

# Scenario: Get broker list by user
# Given path '/Common/GetBrokerListByUser'
# When method GET
# Then status 200
# Then print response

# Scenario: Read Note
# Given path '/Reservation/StandingOrder/ReadNote'
# And request 
#   """
#    { 
#       "page": "1", 
#       "pageSize": "10", 
#       "tripId": "0"
#    }
#       """
# When method POST
# Then status 200
# Then print response

# Scenario: Find active standing order
# Given path '/Reservation/StandingOrder/ActiveStandingOrders'
# And request 
#   """
#    { 
#       "memberId": "84972",
#    }
#       """
# When method POST
# Then status 200
# Then print response

Scenario: Validate facility
  Given path '/Common/ValidateFacility'
  And param standingOrderId = ''
  And param tripId = ''
  And param legSeqNum = 1
  And param treatmentType = 'Physical Therapy'
  And param dateOfService = ''
  And param addressLine1 = '1600 W Ave J'
  And param city = 'Lancaster'
  And param state = 'CA'
  And param zip = '93534'
  And param facilityName = 'ANTELOPE VALLEY HOSPITAL'
  And param lat = 34.6859342
  And param lng = -118.1618591
  And param type = 'drop'
  When method GET
  Then status 200
  And print response
  And match response.Message == 'Valid drop facility'
  And match response.Total == 1
  And match response.Data[0].Name == 'ANTELOPE VALLEY HOSPITAL D/P APH'
  And match response.Data[0].Zipcode == '93534'


Scenario: Check blocked addresses
Given path '/Reservation/Reservation/CheckBlockedAddress'
And request 
  """
   {
  "puAddressLine1": "340 S Parsons Ave",
  "puStateId": 5,
  "puZipcode": "95341",
  "doAddressLine1": "1600 W Ave J",
  "doStateId": 5,
  "doZipcode": "93534",
  "checkPUAddress": true,
  "checkDOAddress": true,
  "clientId": 5,
  "memberId": "84972"
}
      """
When method POST
Then status 200
Then print response

Scenario: Validate treatment type for a given Standing Order ID
Given path "/Common/CheckTreatmentTypeForSO"
And param id = 46
When method GET
Then status 200
And print response
And match response.isAllowed == true || response.isAllowed == false

Scenario: Insert standing order
Given path '/Reservation/StandingOrder/Insert'
And request
   """
   {
  "model": {
    "GhostRideNotes": [],
    "StandingOrder": {
      "Id": 0,
      "MemberId": "84972",
      "StartDate": "07/30/2025",
      "EndDate": "",
      "UpcomingDateOfService": "",
      "AdultEscortNum": "1",
      "AuditHistoryMessage": "",
      "BrokerId": "4",
      "ChildEscortNum": "1",
      "ClientId": "5",
      "CreatedDate": "07/23/2025",
      "Days": ["1", "3", "4"],
      "Duration": "",
      "LastDateVerified": "07/01/2025",
      "LevelOfService": "Ambulatory Curb to Curb",
      "LevelOfServiceId": "13",
      "OrderingFacilityContact": "8893883933",
      "OrderingFacilityId": "8621",
      "OrderingFacilityName": "ANAHEIM COMMUNITY HOSPITAL, LLC",
      "OrderingFacilityPhone": "(874) 883-7383",
      "OverrideCount": "",
      "SchedularName": "Drake",
      "SchedularPhone": "(898) 883-8383",
      "SchedularRelationId": "4",
      "Tags": [20, 111],
      "TransitFarePickupAtOffice": false,
      "Tripleg": [
        {
          "AppointmentTime": null,
          "AuthorizationNumber": "auth 123",
          "CreatedDate": "07/23/2025",
          "DoctorConsent": null,
          "DoctorName": "Sr chang",
          "DoctorSpecialityId": "2",
          "DropAddressFormatted": "1600 W Ave J, Lancaster, CA 93534, USA",
          "DropAddressId": 0,
          "DropAddressLine1": "1600 W Ave J",
          "DropApartment": "",
          "DropCity": "Lancaster",
          "DropCounty": "Los Angeles",
          "DropFacilityId": 3568,
          "DropLocationComment": "",
          "DropName": "ANTELOPE VALLEY HOSPITAL",
          "DropOffAddressTags": "",
          "DropOffDstOffset": "",
          "DropOffRawOffset": "",
          "DropOffTime": null,
          "DropOffTimezoneId": "",
          "DropOffTimezoneName": "",
          "DropOfflatitude": "34.6859342",
          "DropOfflongitude": "-118.1618591",
          "DropPhone": "(897) 970-7077",
          "DropStateId": 5,
          "DropType": 1,
          "DropZipcode": "93534",
          "Duration": "3 hours 54 mins",
          "DurationInSecond": 14011,
          "EstMiles": 249.23,
          "IsDropAddressIdentified": true,
          "IsLockedFlag": false,
          "IsPickupAddressIdentified": true,
          "PickUpAddressTags": "",
          "PickUpDstOffset": "",
          "PickUpRawOffset": "",
          "PickUpTimezoneId": "",
          "PickUpTimezoneName": "",
          "PickUplatitude": "37.2829738",
          "PickUplongitude": "-120.4495487",
          "PickupAddressFormatted": "845 S Burlington Ave, Los Angeles, CA 90057, USA",
          "PickupAddressId": 0,
          "PickupAddressLine1": "340 S Parsons Ave",
          "PickupApartment": "Bld 304 apt 5",
          "PickupCity": "Merced",
          "PickupCounty": "Los Angeles",
          "PickupFacilityId": null,
          "PickupLocationComment": "",
          "PickupName": "Member residence",
          "PickupPhone": "(510) 491-7835",
          "PickupStateId": 5,
          "PickupTime": null,
          "PickupType": 2,
          "PickupZipcode": "95341-5375",
          "Status": "Scheduled",
          "SubcontractorId": "0",
          "TransitFare": null,
          "TreatmentTypeId": "46",
          "TreatmentTypeName": "Physical Therapy",
          "WaitTime": 0,
          "WaitTimeNote": "",
          "Willcall": true,
          "isOverrideUsed": false
        }
      ]
    },
    "pharmacyTabSelected": ""
  }
}

    """
When method POST
Then status 200
Then print response

Scenario: Read trip audit history
Given path '/Reservation/StandingOrder/ReadTripAudithistory'
And request 
  """
   { 
      "tripId": "61979"
   }
      """   
When method POST
Then status 200
Then print response

Scenario: Get SO propagated trips list
Given path '/Reservation/StandingOrder/GetSOPropagatedTripsList'
And request 
  """
   { 
        "page": "1",
        "pageSize": "20",
        "tripId": "61979"
   }
      """   
When method POST
Then status 200
Then print response
And match response.Total == 2
And match response.Errors == null

Scenario: Get treatment type list for a client for standing order
Given path '/Common/GetTreatmentTypeList'
And param clientId = 5
And param isForStandingOrder = true
When method GET
Then status 200
And print response

Scenario: Create SO notes
Given path '/Reservation/StandingOrder/CreateNotes'
And request 
  """
   {
  "sort": null,
  "group": null,
  "filter": null,
  "NoteId": 0,
  "TripId": 61979,
  "TriplegSeqNum": null,
  "TriplegSeqNumNew": "1",
  "NoteCategoryId": 15,
  "Reason": null,
  "NoteCategoryName": null,
  "NoteText": "axxt",
  "CreatedBy": null,
  "CreatedDate": "7/23/2025 11:04:37 PM",
  "ModifiedBy": null,
  "ModifiedDate": "7/23/2025 11:04:37 PM",
  "IsActive": 0,
  "subcontractorId": 0,
  "TripLegId": 0,
  "DeathDate": null,
  "CallPropertyId": null
}

      """   
When method POST
Then status 200
Then print response
And match response.Total == 1
And match response.Errors == null

Scenario: Get SO phonecalls
Given path '/Reservation/StandingOrder/GetStandingOrderPhoneCalls'
And request 
  """
   {
  "TripId": 61979
   }
"""   
When method POST
Then status 200
Then print response
