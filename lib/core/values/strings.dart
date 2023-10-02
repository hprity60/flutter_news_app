abstract class AppStrings {
  static const String baseUrl =
      "https://gcmemberportalapidev.azurewebsites.net";
  static const String signInApi = "/api/Security/Authenticate";
  static const String signUpApi = "/api/Security/signup";
  static const String changePasswordApi = "/api/Security/changepassword";


  static const String getSavingsApplicationSummaryApi =
      '/api/gcmfi/PortalSavingSummary/getapprovesavingsummary';

  static const String getCountryProviderApi = '/api/gcmfi/country/getall';

  static const String sendOtpApi = '/api/Notification/SendOtp';
  static const String verifyOtpApi = '/api/Notification/VerifyOtp';

  static const String sendEmailOtpApi = '/api/Notification/SendEmailOtp';
  static const String verifyEmailOtpApi = '/api/Notification/VerifyEmailOtp';

  static const String getFrequencyApi = '/api/gcmfi/member/GetFrequency';
  static const String getAllPurposeByNameApi =
      '/api/gcmfi/member/GetAllPurposeByName';
  static const String getLoanProductListApi =
      '/api/gcmfi/member/GetProductList';
  static const String getPendingLoanListApi =
      '/api/gcmfi/PortalLoanSummary/getLoanSummaryStatus';
  static const String getSavingsApplicationListApi =
      '/api/gcmfi/PortalSavingSummary/getSavingSummaryStatusbyMemberId';
  static const String getLoanApplicationListApi =
      '/api/gcmfi/PortalLoanSummary/getLoanSummaryStatusByMemberId';
  static const String getSavingsProductListApi =
      '/api/gcmfi/PortalSavingSummary/getproductlistforsavingaccount';

  //token encoded fields
  static const String createLoanApi = '/api/gcmfi/PortalLoanSummary/create';
  static const String createSavingsApi =
      '/api/gcmfi/PortalSavingSummary/create';
  static const String email = 'email';
  static const String userName = 'userName';
  static const String id = 'id';
  static const String fullName = 'fullName';
  static const String portalMemberId = 'PortalMemberId';
  static const String memberId = 'memberId';
  static const String centerId = 'centerId';
  static const String orgId = 'orgId';
  static const String officeId = 'officeId';
  static const String memberStatus = 'memberStatus';
  static const String banglaName = 'banglaName';
  static const String role = 'role';
}
