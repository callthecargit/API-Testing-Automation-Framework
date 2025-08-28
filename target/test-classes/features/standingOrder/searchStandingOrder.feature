Feature: Search standing order page

Background:
* url 'https://ccerrts-dev.callthecar.com'
* header Cookie = 'ASP.NET_SessionId=eizjxc5td2mp5gd2ckozij3g; UserDetailCookie=UserDetail=YXJ1bi5yLFRydWU=&Expires=7/23/2025 3:56:26 AM; __RequestVerificationToken=4R7i5gzYELrjBV8JqjE7w4WtLnSywqTcgYG-LzRht-FXIqdKTl51H2Ys_bUJrEbWws-lM4bsksXU1UVDx54MCsFxFH25Zc00axRk2S8haoY1; .AspNet.ApplicationCookie=2nY4GBoYw_3uKn6bSzb2uYCpaxCO2ARZQQ1QhcE4NLRMJN6MUTlrlxhLgMOfCcMMYLFQmlkNDmLltA0C9NeZnvAqsz0VDWozlK3iaWyJndGJNfLHIv3JRLJc2V5ikKkF5xrZzGL7v14u9opqLYVuq5H3qJlQ9NPE8dxKQGqbeZUixI08_dhKo6AIZl85pgPkuPdIEkGd626jnmot737EG2OHyj-RbnLTrePk7CgbFeXnHtbvCr3nGZj637bmfFZoKDyJePbJV5j-h46foKTtNaOFADFe8EoiluqSU1o3EPAE7Ys4tM5z7TmVXk5uhCXhZ8j1-bRnu4xFzV2KQf06Q78Nyyne1dmkHUyJ_ZY8ERXQcKWg7UZFKL8ho2gFlw4xdgd_4tays5O1k3Owdll-sRjphvf6BdFIHFhpaFXAXXpG7i-y7BGi2lWuEmBPJONce7God48Lz3CV8St8oZRLUPLu2XUKOky8F6bBRbDwKwM8_sdaeBCAPOa43v5frgAZT_DunuVCwvwuiHRS9cZqBtE5ORI-dOTANP35IcoI1kE'

Scenario: Get standing order search page
Given path '/Reservation/StandingOrder'
When method GET
Then status 200
Then print response


Scenario: Get broker list by user
Given path '/Common/GetBrokerListByUser'
When method GET
Then status 200
Then print response

Scenario: Get client name
Given path '/Member/Member/GetClientName'
When method GET
Then status 200
Then print response

Scenario: Check the validity of the cookie
Given path '/Account/CheckIsCookieValid'
When method GET
Then status 200
Then print response

Scenario: search Standing orders by DOS start date
  Given path '/Reservation/StandingOrder/Read'
   And request 
  """
   { 
      "page": "1", 
      "pageSize": "20", 
      "dateOfService": "07/01/2025",
      "isChecked": "true"
   }
      """
  When method POST
  Then status 200
  Then print response

  Scenario: Export list of searched standing orders
  Given path '/Reservation/StandingOrder/SOHolidayOutreachExport?MemberFirstName=&MemberLastName=&Dob=&Facilityname=&subcontractor=&status=undefined&BrokerId=0&MemberId=&ClientId=&IsChecked=true&dateOfService=&dateOfServiceEndDate=&DropoffAddressLine1=&StandingOrderIds='
  And request  
  """
   { 
      "status": "undefined", 
      "BrokerId": "0", 
      "isChecked": "true"
   }
      """
  When method GET
  Then status 200
  Then print response

  Scenario: Read standing order trip leg by id
    Given path '/Reservation/StandingOrder/ReadStandingOrderTripLegById?standingOrderId=4805'
     And request 
    """
     { 
        "page": "1",
        "pageSize": "5", 
        "dateOfServiceStartDate": "07/01/2025",
        "dateOfServiceEndDate": "07/02/2025"
     }
        """
    When method POST
    Then status 200
    Then print response