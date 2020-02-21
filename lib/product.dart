import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:domain_investor/serializers.dart';

part 'product.g.dart';

abstract class Product implements Built<Product, ProductBuilder> {
  Product._();

  factory Product([updates(ProductBuilder b)]) = _$Product;

  @BuiltValueField(wireName: 'HasIcannFee')
  bool get hasIcannFee;
  @BuiltValueField(wireName: 'PhaseCode')
  String get phaseCode;
  @BuiltValueField(wireName: 'PhaseId')
  int get phaseId;
  @BuiltValueField(wireName: 'ProductId')
  int get productId;
  @BuiltValueField(wireName: 'RenewalProductId')
  int get renewalProductId;
  @BuiltValueField(wireName: 'TierId')
  int get tierId;
  @BuiltValueField(wireName: 'Tld')
  String get tld;
  @BuiltValueField(wireName: 'PriceInfo')
  PriceInfo get priceInfo;
  String toJson() {
    return json.encode(serializers.serializeWith(Product.serializer, this));
  }

  static Product fromJson(String jsonString) {
    return serializers.deserializeWith(
        Product.serializer, json.decode(jsonString));
  }

  static Serializer<Product> get serializer => _$productSerializer;
}

abstract class PriceInfo implements Built<PriceInfo, PriceInfoBuilder> {
  PriceInfo._();

  factory PriceInfo([updates(PriceInfoBuilder b)]) = _$PriceInfo;

  @nullable
  @BuiltValueField(wireName: 'CurrentPriceinMicroUnits')
  int get currentPriceinMicroUnits;
  @nullable
  @BuiltValueField(wireName: 'CurrentPrice')
  double get currentPrice;
  @nullable
  @BuiltValueField(wireName: 'CurrentPriceDisplay')
  String get currentPriceDisplay;
  @nullable
  @BuiltValueField(wireName: 'IsPromoDiscount')
  bool get isPromoDiscount;
  @nullable
  @BuiltValueField(wireName: 'ListPrice')
  double get listPrice;
  @nullable
  @BuiltValueField(wireName: 'ListPriceDisplay')
  String get listPriceDisplay;
  @nullable
  @BuiltValueField(wireName: 'ListPriceinMicroUnits')
  int get listPriceinMicroUnits;
  @nullable
  @BuiltValueField(wireName: 'AdditionalYearsPrice')
  double get additionalYearsPrice;
  @nullable
  @BuiltValueField(wireName: 'AdditionalYearsPriceDisplay')
  String get additionalYearsPriceDisplay;
  @nullable
  @BuiltValueField(wireName: 'OverridePriceUsd')
  int get overridePriceUsd;
  @nullable
  @BuiltValueField(wireName: 'PromoRegLengthFlag')
  int get promoRegLengthFlag;
  @nullable
  @BuiltValueField(wireName: 'RenewalPriceDisplay')
  String get renewalPriceDisplay;
  @nullable
  @BuiltValueField(wireName: 'VatFees')
  int get vatFees;
  @nullable
  @BuiltValueField(wireName: 'IsVATIncludedInPrice')
  bool get isVATIncludedInPrice;
  @nullable
  @BuiltValueField(wireName: 'ApplicationFee')
  int get applicationFee;
  @nullable
  @BuiltValueField(wireName: 'ApplicationFeeDisplay')
  String get applicationFeeDisplay;
  @nullable
  @BuiltValueField(wireName: 'TotalListPriceDisplay')
  String get totalListPriceDisplay;
  @nullable
  @BuiltValueField(wireName: 'TotalCurrentPriceDisplay')
  String get totalCurrentPriceDisplay;
  @nullable
  @BuiltValueField(wireName: 'MinimumYears')
  int get minimumYears;
  String toJson() {
    return json.encode(serializers.serializeWith(PriceInfo.serializer, this));
  }

  static PriceInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        PriceInfo.serializer, json.decode(jsonString));
  }

  static Serializer<PriceInfo> get serializer => _$priceInfoSerializer;
}
