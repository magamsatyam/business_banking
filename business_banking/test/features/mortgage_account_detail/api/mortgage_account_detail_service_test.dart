import 'package:business_banking/features/mortgage_account_details/api/mortgage_account_detail_service.dart';
import 'package:business_banking/features/mortgage_account_details/api/mortgage_account_detail_service_response_model.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mortgage_account_detail_mock_service.dart';

void main() {
  test('MortgageAccountDetailService success', () async {
    final service = MortgageAccountDetailService();
    final eitherResponse = await service.request();

    expect(eitherResponse.isRight, isTrue);
    expect(
        eitherResponse.fold((_) {}, (m) => m),
        MortgageAccountDetailServiceResponseModel.fromJson(
            {'name': 'Employee Mortgage',
              'lastFour': '6789',
              'accountType': 'Employee Mortgage',
              'routingNum': 738395735,
              'balance': 7383.54,
              'begBalance': 23674.43,
              'penTrans': -4128.89,
              'depHolds': 0.00}));
  });

  test('MortgageAccountDetailService success mock', () async {
    final service = MortgageAccountDetailMockService();

    expect(
        service.parseResponse({'name': 'Employee Mortgage',
          'lastFour': '6789',
          'accountType': 'Employee Mortgage',
          'routingNum': 738395735,
          'balance': 7383.54,
          'begBalance': 23674.43,
          'penTrans': -4128.89,
          'depHolds': 0.00}),
        MortgageAccountDetailServiceResponseModel.fromJson(
            {'name': 'Employee Mortgage',
              'lastFour': '6789',
              'accountType': 'Employee Mortgage',
              'routingNum': 738395735,
              'balance': 7383.54,
              'begBalance': 23674.43,
              'penTrans': -4128.89,
              'depHolds': 0.00}));
  });
}