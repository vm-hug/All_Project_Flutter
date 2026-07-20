import 'package:ui_ecommerce/features/shippingAddress/models/address.dart';

class AddressRepository {
  List<Address> getAddress() {
    return [
      Address(
        id: '1',
        label: 'Home',
        fullAddress: '123 Main Street , Apt 4B',
        city: 'New York',
        state: 'NY',
        zipCode: '100001',
        isDefault: true,
        type: AddressType.home,
      ),
      Address(
        id: '1',
        label: 'Home',
        fullAddress: '123 Main Street , Apt 4B',
        city: 'New York',
        state: 'NY',
        zipCode: '100001',
        type: AddressType.office,
      ),
      Address(
        id: '1',
        label: 'Home',
        fullAddress: '123 Main Street , Apt 4B',
        city: 'New York',
        state: 'NY',
        zipCode: '100001',
        type: AddressType.other,
      ),
    ];
  }

  Address? getDefaultAddress() {
    return getAddress().firstWhere(
      (address) => address.isDefault,
      orElse: () => getAddress().first,
    );
  }
}
