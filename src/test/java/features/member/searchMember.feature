Feature: search member page

Background:
* url 'https://ccerrts-dev.callthecar.com'
* header Cookie = 'ASP.NET_SessionId=hygusqgn2s5tkkuehsapovru; __RequestVerificationToken=ipWye6cJNaPX7WRzNgVyVvPq5Is1gk5tgKXpblRG0YbK6APK0nbhOSgUIMbWNXyJXmttZBQVPcgo5RvJjsKBC10xQsMM8Y9uQ2fMUbxku3I1; UserDetailCookie=UserDetail=aGtvc2h0aSxRd2VydHlAMTIzLFRydWU=; CCERRTS_INT_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6Imhrb3NodGkiLCJpc0FjdGl2ZSI6IjEiLCJuYW1laWQiOiJlNjNlMTU4Yi02MmQ0LTQyODYtYTgwZS03MzVkOWM5N2Q2ZmQiLCJlbWFpbCI6Imhrb3NodGlAY2FsbHRoZWNhci5jb20iLCJ1c2VyVHlwZSI6IjEiLCJjbGllbnRJZHMiOiIxMiw2LDEzLDExLDE0LDUsOCwzLDE2LDEwLDQsOSIsImRlc2lnbmF0aW9uSWQiOiIzIiwiZGVzaWduYXRpb25OYW1lIjoiRGlyZWN0b3Igb2YgT3BlcmF0aW9ucyIsIm5iZiI6MTczMjYxNzU1MSwiZXhwIjoxNzMyNjUzNTUxLCJpYXQiOjE3MzI2MTc1NTF9.Z139efvRcVbUJYcX5msUNp41UdV9WP4aIOzf2FCl0q4; .AspNet.ApplicationCookie=MQqg-Ixc9wtFaOOQZ0w7ZJKOWthiGpZ_hcv-j59f22g0GmuebVyTaZy0-OSVr38NZ9Ult_pJBN1rx-yxGwjC_IhUxPW2ZrFeT3DRAMIFChxQmyVnO3BMKPrxW-_iGSVOAB9nXyZL-klNBTI407TesQFE48KtamDNcIwe9IWCCN5xwp5oCiqjQcAqfsNFnur-D35WDG3c5e5oTLjAb6bh-jiL2XIFSkTrIVtVBAQfPX956j60ckzDNIgXL7FTXLvRTD6D3kG4EQHpQ4QjE4C7ZOkIb4nfw6V3TmITf4-bY__9e2X5N5-X5lmQV36q3GXsw6xEkMgqd0Kpdv7ij9OXyjvMY9oetBfunql7M_Kw3BCKbfU2AJ_j-gCHy8JWj_CfSR_gdl7JroFnDI6k6-U4J9mDb3qo02PP-6gWVnaatEoSBuUKXsRZNcaLiCL3cWAqKgf6UAwvRFPwyBhx2Praea4HWPU68AY_HgNkR8j8HpeX5bIyUkTo0AMQtlG0zLA2rpV0F00z1IK5h9khZVoMJGF8u4nSvKEg-pos_Zxe5QZmPB-WYRB89FOSqBx5xT5lN075tBxgRDwDnprNRubORA;'


# Scenario: search a member by Member ID
#   Given path '/Member/Member/MemberSearchPanel'
#    And request 
#   """
#    { 
#       "page": "1", 
#       "pageSize": "20", 
#       "MemberID": "ztestmember1021" 
#    }
#       """
#   When method POST
#   Then status 200
#   Then print response
#   And match response.Data[0].Member.MemberId == 'ztestmember1021'


# Scenario: search a member with character input in First Name column
#   Given path '/Member/Member/GetMemberFirstNameSuggestion'
#   When params { "text": "test", "filter%5Bfilters%5D%5B0%5D%5Bvalue%5D": "test", "filter%5Bfilters%5D%5B0%5D%5Boperator%5D":"contains", "filter%5Bfilters%5D%5B0%5D%5Bfield%5D":"","filter%5Bfilters%5D%5B0%5D%5BignoreCase%5D": "true", "filter%5Blogic%5D": "and" }
#   When method GET
#   Then status 200
#   Then print response
#   And match response[0] == "Test"

Scenario: search a member with character input in Last Name column
  Given path '/Member/Member/GetMemberLastNameSuggestion'
  When params { "text": "washington", "filter%5Bfilters%5D%5B0%5D%5Bvalue%5D": "washington", "filter%5Bfilters%5D%5B0%5D%5Boperator%5D":"contains", "filter%5Bfilters%5D%5B0%5D%5Bfield%5D":"","filter%5Bfilters%5D%5B0%5D%5BignoreCase%5D": "true", "filter%5Blogic%5D": "and" }
  When method GET
  Then status 200
  Then print response
  And match response[0].toLowerCase() == "washington".toLowerCase()

Scenario: search a member with character input in Address column
  Given path '/Member/Member/GetMemberAddressSuggestion'
  When params { "text": "newport%2C", "filter%5Bfilters%5D%5B0%5D%5Bvalue%5D": "newport%2C",    "filter%5Bfilters%5D%5B0%5D%5Boperator%5D": "contains",    "filter%5Bfilters%5D%5B0%5D%5Bfield%5D": "", "filter%5Bfilters%5D%5B0%5D%5BignoreCase%5D": "true", "filter%5Blogic%5D": "and" }
  When method GET
  Then status 200
  Then print response
  And match response == "newport"
