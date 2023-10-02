import 'package:flutter/material.dart';
import 'package:grameen_communication/core/routes/models/loan_detail_arg_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grameen_communication/features/change_password/presentation/pages/change_password.dart';
import 'package:grameen_communication/features/home/data/models/savings_application_arg_model.dart';
import 'package:grameen_communication/features/home/presentation/views/pages/home_page.dart';
import 'package:grameen_communication/features/loan_summary/presentation/views/pages/loan_application.dart';
import 'package:grameen_communication/features/loan_summary/presentation/views/pages/loan_screen.dart';
import 'package:grameen_communication/features/savings_summary/presentation/views/pages/savings_application.dart';
import 'package:grameen_communication/features/notification/presentation/pages/notification_screen.dart';
import 'package:grameen_communication/features/onBoarding/presentation/pages/onBoarding_screen.dart';
import 'package:grameen_communication/features/savings_summary/presentation/views/pages/my_savings.dart';
import 'package:grameen_communication/features/settings_screen.dart';
import 'package:grameen_communication/features/sign_in/presentation/views/pages/sign_in_page.dart';
import 'package:grameen_communication/features/sign_up/presentation/views/pages/sign_up_page.dart';

import '../../features/Landing/presentation/bloc/dashboard_event.dart';
import '../../features/Landing/presentation/bloc/landing_bloc.dart';
import '../../features/Landing/presentation/view/page/approval_screen.dart';
import '../../features/Landing/presentation/view/page/landing_screen.dart';
import '../../features/applications_summary/presentation/pages/views/my_application.dart';
import '../../features/apply_loan/presentation/views/pages/apply_loan_page.dart';
import '../../features/apply_savings/presentation/pages/apply_savings.dart';
import '../../features/loan_summary/presentation/views/pages/loan_application_detail_page.dart';
import '../../features/loan_summary/presentation/views/pages/loan_detail_screen.dart';
import '../../features/loan_summary/presentation/views/pages/loan_schedule_page.dart';
import '../../features/loan_summary/presentation/views/pages/loan_schedule_printing_page.dart';
import '../../features/loan_summary/presentation/views/pages/my_payment.dart';
import '../../features/profile/presentation/pages/edit_profile_screen.dart';
import '../../features/profile/presentation/pages/user_profile_page.dart';
import '../../features/savings_summary/presentation/views/pages/my_savings_detail_page.dart';
import '../../features/savings_summary/presentation/views/pages/savings_application_detail_page.dart';
import '../../features/savings_summary/presentation/views/pages/savings_schedule_page.dart';
import '../../features/savings_summary/presentation/views/pages/savings_schedule_printing_page.dart';
import 'models/arg_models.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case OnBoardingScreen.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case SignInPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const SignInPage());

      case SignUpPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case ApprovalPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const ApprovalPage());
      case HomePage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) {
          _.read<LandingBloc>().add(SelectPage(HomePage.id));
          return const LandingScreen();
        });

      case ApplyLoanPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => ApplyLoanPage());

      case ApplySavingsPage.id:
        final args = routeSettings.arguments as ApplySavingsArgModel;
        return MaterialPageRoute(
            builder: (_) => ApplySavingsPage(
                  orgId: args.orgId,
                  officeID: args.officeID,
                ));

      case LoanScreen.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const LoanScreen());

      case MyLoanDetailScreen.id:
        final args = routeSettings.arguments as LoanDetailArgModel;
        return MaterialPageRoute(
            builder: (_) => MyLoanDetailScreen(
                  contextId: args.id,
                  productName: args.productName,
                  purposeName: args.purposeName,
                ));

      case LoanApplicationPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => LoanApplicationPage());

      case LoanApplicationDetailScreen.id:
        final args = routeSettings.arguments as LoanDetailArgModel;
        return MaterialPageRoute(
            builder: (_) => LoanApplicationDetailScreen(
                  contextId: args.id,
                  productName: args.productName,
                  purposeName: args.purposeName,
                ));

      case MySavingsPage.id:
        // final args = routeSettings.arguments as SavingsDetailArgModel;
        return MaterialPageRoute(builder: (_) => const MySavingsPage());
      case MySavingsDetailScreen.id:
        final args = routeSettings.arguments as SavingsDetailArgModel;
        return MaterialPageRoute(
            builder: (_) => MySavingsDetailScreen(
                  contextId: args.savingsId,
                  productName: args.productName,
                ));
      case SavingsApplicationPage.id:
        final args = routeSettings.arguments as SavingsApplicationArgModel;
        return MaterialPageRoute(
            builder: (_) => SavingsApplicationPage(
                  memberId: args.memberId,
                ));

      case SavingsApplicationDetailScreen.id:
        final args =
            routeSettings.arguments as SavingsApplicationDetailArgModel;
        return MaterialPageRoute(
            builder: (_) => SavingsApplicationDetailScreen(
                  contextId: args.savingsId,
                  productName: args.productName,
                ));
      case MyApplicationPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const MyApplicationPage());

      case MyPaymentPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => MyPaymentPage());

      case NotificationScreen.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const NotificationScreen());

      case SettingsPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const SettingsPage());

      case UserProfilePage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const UserProfilePage());

      case EditUserProfilePage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => EditUserProfilePage());

      case ChangePasswordPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const ChangePasswordPage());

      case LoanSchedulePage.id:
        final args = routeSettings.arguments as LoanScheduleArgModel;
        return MaterialPageRoute(
            builder: (_) => LoanSchedulePage(
                  officeID: args.officeID,
                  memberID: args.memberID,
                  loanTerm: args.loanTerm,
                  productId: args.productId,
                ));

      case SavingsSchedulePage.id:
        final args = routeSettings.arguments as SavingsScheduleArgModel;
        return MaterialPageRoute(
            builder: (_) => SavingsSchedulePage(
                  officeID: args.officeID,
                  lonee1: args.lonee1,
                  lonee2: args.lonee2,
                  productID: args.productId,
                ));

      case PrintSavingsSchedulePage.id:
        final args = routeSettings.arguments as PrintScheduleArgModel;
        return MaterialPageRoute(
            builder: (_) => PrintSavingsSchedulePage(
                  title: args.title,
                  officeID: args.officeID,
                  lonee1: args.lonee1,
                  lonee2: args.lonee2,
                  type: args.type,
                  productID: args.productID,
                  //savingsScheduleList: args.savingsScheduleList,
                ));

      case LoanSchedulePrinting.id:
        final args = routeSettings.arguments as LoanSummaryArgModel;
        return MaterialPageRoute(
            builder: (_) => LoanSchedulePrinting(
                  officeID: args.officeID,
                  memberId: args.memberId,
                  loanTerm: args.loanTerm,
                  productId: args.productId,
                  //savingsScheduleList: args.savingsScheduleList,
                ));

      // case CreateEmployeeTimesheetContextIdUi.id:
      //   final args = routeSettings.arguments as ArgModel;
      //   return MaterialPageRoute(
      //     builder: (_) => CreateEmployeeTimesheetContextIdUi(
      //       text: args.text,
      //       title: args.title,
      //       token: args.token,
      //     ),
      //   );

      default:
        return null;
    }
  }
}
