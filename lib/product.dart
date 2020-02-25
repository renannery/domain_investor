import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:domain_investor/serializers.dart';

part 'product.g.dart';

abstract class Product implements Built<Product, ProductBuilder> {
  Product._();

  factory Product([updates(ProductBuilder b)]) = _$Product;

  @nullable
  @BuiltValueField(wireName: 'HasIcannFee')
  bool get hasIcannFee;
  @nullable
  @BuiltValueField(wireName: 'PhaseCode')
  String get phaseCode;
  @nullable
  @BuiltValueField(wireName: 'PhaseId')
  int get phaseId;
  @nullable
  @BuiltValueField(wireName: 'ProductId')
  int get productId;
  @nullable
  @BuiltValueField(wireName: 'RenewalProductId')
  int get renewalProductId;
  @nullable
  @BuiltValueField(wireName: 'TierId')
  int get tierId;
  @nullable
  @BuiltValueField(wireName: 'Tld')
  String get tld;
  @nullable
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
  @nullable
  @BuiltValueField(wireName: 'CurrentPriceinMicroUnits')
  int get currentPriceinMicroUnits;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'CurrentPrice')
  double get currentPrice;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'CurrentPriceDisplay')
  String get currentPriceDisplay;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'IsPromoDiscount')
  bool get isPromoDiscount;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'ListPrice')
  double get listPrice;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'ListPriceDisplay')
  String get listPriceDisplay;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'ListPriceinMicroUnits')
  int get listPriceinMicroUnits;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'AdditionalYearsPrice')
  double get additionalYearsPrice;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'AdditionalYearsPriceDisplay')
  String get additionalYearsPriceDisplay;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'OverridePriceUsd')
  int get overridePriceUsd;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'PromoRegLengthFlag')
  int get promoRegLengthFlag;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'RenewalPriceDisplay')
  String get renewalPriceDisplay;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'VatFees')
  int get vatFees;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'IsVATIncludedInPrice')
  bool get isVATIncludedInPrice;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'ApplicationFee')
  int get applicationFee;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'ApplicationFeeDisplay')
  String get applicationFeeDisplay;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'TotalListPriceDisplay')
  String get totalListPriceDisplay;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'TotalCurrentPriceDisplay')
  String get totalCurrentPriceDisplay;
  @nullable
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
