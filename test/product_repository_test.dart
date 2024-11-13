import 'package:flutter_market_app/data/repository/address_repository.dart';
import 'package:flutter_market_app/data/repository/product_repository.dart';
import 'package:flutter_market_app/data/repository/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //
  test('ProductRepository : getProductSummaryList test', () async {
    final productRepository = ProductRepository();

    final result1 = await productRepository.getProductSummaryList(1);
    expect(result1, null);

    final userRepository = UserRepository();
    final addressRepository = AddressRepository();

    await userRepository.login(username: 'tester', password: '1111');

    final addresses = await addressRepository.getMyAddressList();
    final result2 =
        await productRepository.getProductSummaryList(addresses!.first.id);

    expect(result2 != null, true);
    for (var v in result2!) {
      print(v.toJson());
    }
  });
}
