import 'package:business_banking/features/mortgage_account_details/bloc/mortgage_account_detail_bloc.dart';
import 'package:business_banking/features/mortgage_account_details/model/mortgage_account_detail_view_model.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:mockito/mockito.dart';

class MortgageAccountDetailMockBloc extends Fake implements MortgageAccountDetailBloc {
  Pipe<MortgageAccountDetailViewModel> mortgageAccountsViewModelPipe = Pipe<MortgageAccountDetailViewModel>();

  MortgageAccountDetailMockBloc() {
    mortgageAccountsViewModelPipe.onListen(() {
      mortgageAccountsViewModelPipe.send(MortgageAccountDetailViewModel(
          name: 'Employee Mortgage',
          lastFour: '1904',
          accountType: 'Mortgage',
          routingNumber:879076567,
          balance:8935.90,
          beginningBalance:9390.43,
          pendingTransactions:-898.89,
          depositHolds:0.00
      ));
    });
  }

  @override
  void dispose() {}
}