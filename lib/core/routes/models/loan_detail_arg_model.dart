// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoanDetailArgModel {
  final int id;
  final String productName;
  final String purposeName;

  LoanDetailArgModel({
    required this.id,
    required this.productName,
    required this.purposeName,
  });
}

class SavingsDetailArgModel {
  final int savingsId;
  final String productName;

  SavingsDetailArgModel({
    required this.savingsId,
    required this.productName,
  });
}

class SavingsApplicationDetailArgModel {
  final int savingsId;
  final String productName;

  SavingsApplicationDetailArgModel({
    required this.savingsId,
    required this.productName,
  });
}

class LoanScheduleArgModel {
  final int productId;
  final int officeID;
  final int memberID;
  final int loanTerm;

  LoanScheduleArgModel({
    required this.productId,
    required this.officeID,
    required this.memberID,
    required this.loanTerm,
  });
}

class SavingsScheduleArgModel {
  final int productId;
  final int officeID;
  final int lonee1;
  final int lonee2;

  SavingsScheduleArgModel({
    required this.productId,
    required this.officeID,
    required this.lonee1,
    required this.lonee2,
  });
}
