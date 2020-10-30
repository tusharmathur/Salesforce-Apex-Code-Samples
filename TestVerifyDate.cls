@isTest
public class TestVerifyDate {
	@isTest static void DateWithin30Days() {
        Date date1 = Date.parse('10/1/2020');
        Date date2 = Date.parse('10/18/2020');
        Date datecheck = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2,datecheck);
    }
    
    @isTest static void DateNotWithin30Days() {
        Date date1 = Date.parse('10/1/2020');
        Date date2 = Date.parse('11/18/2020');
        Date datecheck = VerifyDate.CheckDates(date1, date2);
        Date correctdate = Date.parse('10/31/2020');
        System.assertEquals(correctdate,datecheck);
    }
}
