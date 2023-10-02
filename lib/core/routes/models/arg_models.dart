// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:grameen_communication/features/loan_summary/data/models/loan_schedule_response_model.dart';

class PrintScheduleArgModel {
  final String title;
  final int officeID;
  final int lonee1;
  final int lonee2;
  final int type;
  int productID;
  PrintScheduleArgModel({
    required this.title,
    required this.officeID,
    required this.lonee1,
    required this.lonee2,
    required this.type,
    required this.productID,
  });
}

class PrintLoanScheduleArgModel {
  final String title;
  List<LoanScheduleResponseModel> loanScheduleList;

  PrintLoanScheduleArgModel({
    required this.title,
    required this.loanScheduleList,
  });
}

class ApplySavingsArgModel {
  final String orgId;
  final String officeID;

  ApplySavingsArgModel({
    required this.orgId,
    required this.officeID,
  });
}
