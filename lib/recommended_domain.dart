library recommended_domain;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:domain_investor/serializers.dart';

part 'recommended_domain.g.dart';

abstract class RecommendedDomain
    implements Built<RecommendedDomain, RecommendedDomainBuilder> {
  RecommendedDomain._();

  factory RecommendedDomain([updates(RecommendedDomainBuilder b)]) =
      _$RecommendedDomain;

  @BuiltValueField(wireName: 'IsAd')
  bool get isAd;
  @BuiltValueField(wireName: 'Index')
  int get index;
  @BuiltValueField(wireName: 'Fqdn')
  String get fqdn;
  @BuiltValueField(wireName: 'Extension')
  String get extension;
  @BuiltValueField(wireName: 'NameWithoutExtension')
  String get nameWithoutExtension;
  @BuiltValueField(wireName: 'DomainSource')
  String get domainSource;
  @BuiltValueField(wireName: 'Inventory')
  String get inventory;
  @BuiltValueField(wireName: 'TierId')
  int get tierId;
  @BuiltValueField(wireName: 'IsPremiumTier')
  bool get isPremiumTier;
  @BuiltValueField(wireName: 'PhaseId')
  int get phaseId;
  @BuiltValueField(wireName: 'PhaseCode')
  String get phaseCode;
  @BuiltValueField(wireName: 'Price')
  int get price;
  @BuiltValueField(wireName: 'PriceDisplay')
  String get priceDisplay;
  @BuiltValueField(wireName: 'UsdPrice')
  int get usdPrice;
  @BuiltValueField(wireName: 'ProductId')
  int get productId;
  @BuiltValueField(wireName: 'RenewalProductId')
  int get renewalProductId;
  @BuiltValueField(wireName: 'VendorId')
  int get vendorId;
  @BuiltValueField(wireName: 'IsIdn')
  bool get isIdn;
  @BuiltValueField(wireName: 'DomainGUID')
  String get domainGUID;
  @BuiltValueField(wireName: 'AddToCartCallback')
  String get addToCartCallback;
  String toJson() {
    return json
        .encode(serializers.serializeWith(RecommendedDomain.serializer, this));
  }

  static RecommendedDomain fromJson(String jsonString) {
    return serializers.deserializeWith(
        RecommendedDomain.serializer, json.decode(jsonString));
  }

  static Serializer<RecommendedDomain> get serializer =>
      _$recommendedDomainSerializer;
}
