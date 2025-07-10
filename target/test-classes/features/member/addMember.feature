Feature: add member page

Background:
* url 'https://ccerrts-dev.callthecar.com'
* header Cookie = 'ASP.NET_SessionId=hc4hl0tojzfekgona5x3i3i1; CCERRTS_INT_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6Imhrb3NodGkiLCJpc0FjdGl2ZSI6IjEiLCJuYW1laWQiOiJlNjNlMTU4Yi02MmQ0LTQyODYtYTgwZS03MzVkOWM5N2Q2ZmQiLCJlbWFpbCI6Imhrb3NodGlAY2FsbHRoZWNhci5jb20iLCJ1c2VyVHlwZSI6IjEiLCJjbGllbnRJZHMiOiIxMiw2LDEzLDExLDE0LDUsOCwzLDE2LDEwLDQsOSIsImRlc2lnbmF0aW9uSWQiOiIzIiwiZGVzaWduYXRpb25OYW1lIjoiRGlyZWN0b3Igb2YgT3BlcmF0aW9ucyIsIm5iZiI6MTc1MDQxNDcwMywiZXhwIjoxNzUwNDUwNzAzLCJpYXQiOjE3NTA0MTQ3MDN9.owLWiIxFNXgHoqSyB5yNm744dpSO_oJNVkh5Ev8CtXQ; UserDetailCookie=UserDetail=aGtvc2h0aSxUcnVl&Expires=6/21/2025 3:18:24 AM; .AspNet.ApplicationCookie=4MRfjGKPtvrJKg-5OsMsSvX88IPYfLo63VKxTTHrqCWCfgC7PtTrFiusVvGBS-pAM544mm5vXj7UVw3ez-QBOnh-WrZLQYvglVrFBmnoS7dv-Mza0Q7d0l_rjNXTp9qTN1wUl5WTj9O8KAv-lE-isV8QxIX4evA1VzcGn4jnxVgC8g3MsViZgxiSXTQKGpiL89b6Hd2Oump7KrPJ8TWmWnIJzsJTQMt4cBsJEae-dJOBC5cl3wdoBGX8MaqGpHsb6esOXX4ISLCmRa-d3TYhlOXLz68kIYmAi6SeusyIdYwUblMXKNKzv38JwJ8AHPbg6qQAScDAuj4ESiOipVkny5LjndYaf_Jea_fbuaD_bAFo6X2FWGXTPJquUC9wHqGSHTMroGwjjdz7DdtBcGolFrVpTa2Ups00Rb6iWkwO_3TY2VzXfg4sTyw_86CEdmRkErJ4_N7GH6UCnAOzuAT4FK7jd8_5aGoVI3Ub6Z0HYgPWviCEOkq2bvxet4B8nOhmzr1S5CquBlciKSs2ZgZjeQdncKEqseXTAznxOHZKPhhsWbf2OLJSLUyj0r1IvUwFOU5Z6wbVqSJTPkGG3ir40Q'

# "Member.Member.MemberId": "Member",


Scenario: Add a new member
Given path '/Member/Member/Create'
And request 
"""
   { 
      "Mode": "Create", 
      "userType": "1", 
      "Member.Member.MemberId": "Member_",
      "Member.Member.FirstName": "Any name", 
      "Member.Member.LastName": "washington", 
      "Member.Member.IsActive": "true",
      "Member.Member.IsActive": "false",
      "Member.IsVip": "false",
      "Member.MemberMOT.isActive": "false",
      "Member.MemberMOT.memberMOTId": "0",
      "Member.MemberMOT.memberId": "0",
      "Member.Member.Gender": "1",
      "Member.Member.Pronoun": "Georgina",
      "Member.Member.PrefferedGender": "2",
      "Member.Member.DOB": "02/01/2000",
      "Member.Member.Age": "24",
      "Member.Member.Heightfeet": "5",
      "Member.Member.HeightInches": "5",
      "Member.Member.Weight": "55",
      "Member.Member.ClientId_input": "Blue Shield of California Promise Health Plan",
      "Member.Member.ClientId": "1",
      "Member.MailingAddress.AddressLine1": "1570 E Colorado Blvd",
      "Member.MailingAddress.City": "Pasadena",
      "Member.MailingAddress.StateId_input": "CA",
      "Member.MailingAddress.StateId": "5",
      "Member.MailingAddress.Zipcode": "91106-2003",
      "Member.MailingAddress.County": "Los Angeles",
      "Member.MailingAddress.latitude": "34.1440352",
      "Member.MailingAddress.longitude": "118.1191286",
      "Member.MailingAddress.IsAddressIdentified": "true",
      "Member.MailingAddress.IsAddressIdentified": "false",
      "Member.Member.IsPhysicalAddressSame": "true",
      "Member.Member.IsPhysicalAddressSame": "false",
      "Member.PhysicalAddress.AddressLine1": "1570 E Colorado Blvd",
      "Member.PhysicalAddress.City": "Pasadena",
      "Member.PhysicalAddress.StateId_input": "CA",
      "Member.PhysicalAddress.StateId": "5",
      "Member.PhysicalAddress.Zipcode": "91106-2003",
      "Member.PhysicalAddress.County": "Los Angeles",
      "Member.PhysicalAddress.latitude": "34.1440352",
      "Member.PhysicalAddress.longitude": "118.1191286",
      "Member.MailingAddress.IsAddressIdentified": "true",
      "Member.MailingAddress.IsAddressIdentified": "false",
      "Member.Member.PrimaryContactNo": "(898) 709-0787",
      "Member.Member.PrimaryContactType": "1",
      "Member.Member.SecondaryContactNo": "(898) 709-0790",
      "Member.Member.Email": "hk3455@gmail.com",
      "Member.Notes.NoteText": "vip",
      "Member.Notes.NoteCategoryId": "0",
      "Member.IsAutomatedCallTextOptIn": "true",
      "Member.IsAutomatedCallTextOptIn": "false",
      "Member.IsAutomatedEmailOptIn": "true",
      "Member.IsAutomatedEmailOptIn": "false"
   }
"""
  When method POST
  Then status 200
  Then print response

