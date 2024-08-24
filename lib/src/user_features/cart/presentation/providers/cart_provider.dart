
import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/constants/constants.dart';
import '../../../store/data/models/date_product_dto/date_data.dart';

part 'cart_provider.g.dart';

@Riverpod(keepAlive: true)
class CartService extends _$CartService {
  @override
  FutureOr<List<DateData>> build() async {
    return fetchSavedCartItems();
  }

  List<DateData> _cartList = [];
  List<DateData> getCartList() => _cartList;

  Future<List<DateData>> fetchSavedCartItems() async {
    state = const AsyncValue.loading();

    await Hive.openBox(dateCartItemBox);
    bool exists = Hive.isBoxOpen(dateCartItemBox);
    if (exists) {
      var cartItemBox = Hive.box(dateCartItemBox);
      if (cartItemBox.isNotEmpty) {
        final cartItems = cartItemBox.getAt(0) as List;
        _cartList = cartItems.cast<DateData>().toList();
       
      }
    }
    // sumTotalAmount();
    // sumOfNumOfItemsCart();

    state = AsyncData(_cartList);

    return _cartList;
  }

  incrementQuantity(int index) {
    final quantity = _cartList[index].quantity + 1;
    _cartList[index] =
        _cartList[index].copyWith(quantity: quantity);
        state = AsyncValue.data(_cartList);
  }

  saveCartInLocal() async {
    await Hive.openBox(dateCartItemBox);
    var cartItemBox = Hive.box(dateCartItemBox);
    cartItemBox.put(AppConstants.cartKey, _cartList);
    if (_cartList.isEmpty) {
      cartItemBox.close();
    }
  }

  decrementQuantity(DateData cartItem) {
    int index = _cartList.indexOf(cartItem);
    final quantity = _cartList[index].quantity - 1;
    _cartList[index] =
        _cartList[index].copyWith(quantity: quantity);
    saveCartInLocal();

    state = AsyncData(_cartList);
  }

  removeFromCart(int index) {
    _cartList.removeAt(index);
    state = AsyncData(_cartList);
  }

  int? checkAddedToCart(DateData cartItem) {
    if (_cartList.contains(cartItem) == true) {
      int index = _cartList.indexOf(cartItem);
      log(_cartList[index].quantity.toString());
      return _cartList[index].quantity;

    }
    return 0;
  }

  addToCart(DateData cartItem) {
    state = const AsyncValue.loading();
      if (_cartList.contains(cartItem) == true) {
        int index = _cartList.indexOf(cartItem);
        incrementQuantity(index);

        saveCartInLocal();
      } else {
        cartItem = cartItem.copyWith(quantity: 1);
        _cartList.add(cartItem);
        saveCartInLocal();
      }
     
      // cartItem = cartItem.copyWith(quantity: cartItem.quantity + 1);
      
      state = AsyncValue.data(_cartList);
    
  }

  // sumOfNumOfItemsCart() {
  //   numOfItems = 0;
  //   for (OfferCartItem element in _cartList) {
  //     numOfItems = numOfItems + element.quantity;
  //   }
  // }

  // sumSubTotal() {
  //   subtotal = 0;
  //   for (DateData element in _cartList) {
  //     subtotal = subtotal + ((element.afterDiscount ?? 0) * element.quantity);
  //   }
  //   state = AsyncValue.data(_offerCartItemsList);
  // }

  // sumTotalAmount() {
  //   sumSubTotal();
  //   totalAmount = subtotal + deliveryCharge + taxes;
  //   // await calcPaymentWithVat();
  //   return totalAmount;
  // }

  // int? _paymentMethod = 0;
  // int? getPamentMethod() {
  //   logger.d(_paymentMethod);
  //   return _paymentMethod;
  // }



  // setPaymentMethod(int? paymentMethod) {
  //   _paymentMethod = paymentMethod;
  // }

  clearCart() async {
    _cartList.clear();
    // setPaymentMethod(0);
    await saveCartInLocal();
    state = AsyncValue.data(_cartList);
  }
  
}
