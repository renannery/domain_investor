import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:domain_investor/serializers.dart';

part 'exact_match_domain.g.dart';

abstract class ExactMatchDomain
    implements Built<ExactMatchDomain, ExactMatchDomainBuilder> {
  ExactMatchDomain._();

  factory ExactMatchDomain([updates(ExactMatchDomainBuilder b)]) =
      _$ExactMatchDomain;

  @nullable
  @BuiltValueField(wireName: 'AvailabilityStatus')
  num get availabilityStatus;
  @nullable
  @BuiltValueField(wireName: 'SyntaxStatus')
  num get syntaxStatus;
  @nullable
  @BuiltValueField(wireName: 'SyntaxMessage')
  String get syntaxMessage;
  @nullable
  @BuiltValueField(wireName: 'IsBackorderable')
  bool get isBackorderable;
  @nullable
  @BuiltValueField(wireName: 'IsDbsAvailable')
  bool get isDbsAvailable;
  @nullable
  @BuiltValueField(wireName: 'IsPurchasable')
  bool get isPurchasable;
  @nullable
  @BuiltValueField(wireName: 'AuctionId')
  num get auctionId;
  @nullable
  @BuiltValueField(wireName: 'AuctionTypeId')
  num get auctionTypeId;
  @nullable
  @BuiltValueField(wireName: 'IsAvailable')
  bool get isAvailable;
  @nullable
  @BuiltValueField(wireName: 'IsValid')
  bool get isValid;
  @nullable
  @BuiltValueField(wireName: 'IsNxd')
  bool get isNxd;
  @nullable
  @BuiltValueField(wireName: 'Index')
  num get index;
  @nullable
  @BuiltValueField(wireName: 'Fqdn')
  String get fqdn;
  @nullable
  @BuiltValueField(wireName: 'Extension')
  String get extension;
  @nullable
  @BuiltValueField(wireName: 'NameWithoutExtension')
  String get nameWithoutExtension;
  @nullable
  @BuiltValueField(wireName: 'DomainScore')
  num get domainScore;
  @nullable
  @BuiltValueField(wireName: 'Inventory')
  String get inventory;
  @nullable
  @BuiltValueField(wireName: 'TierId')
  num get tierId;
  @nullable
  @BuiltValueField(wireName: 'IsPremiumTier')
  bool get isPremiumTier;
  @nullable
  @BuiltValueField(wireName: 'PhaseId')
  num get phaseId;
  @nullable
  @BuiltValueField(wireName: 'PhaseCode')
  String get phaseCode;
  @nullable
  @BuiltValueField(wireName: 'Price')
  num get price;
  @nullable
  @BuiltValueField(wireName: 'PriceDisplay')
  String get priceDisplay;
  @nullable
  @BuiltValueField(wireName: 'PriceDisplayInMicroUnits')
  num get priceDisplayInMicroUnits;
  @nullable
  @BuiltValueField(wireName: 'UsdPrice')
  num get usdPrice;
  @nullable
  @BuiltValueField(wireName: 'ProductId')
  num get productId;
  @nullable
  @BuiltValueField(wireName: 'RenewalProductId')
  num get renewalProductId;
  @nullable
  @BuiltValueField(wireName: 'VendorId')
  num get vendorId;
  @nullable
  @BuiltValueField(wireName: 'CommissionPercent')
  num get commissionPercent;
  @nullable
  @BuiltValueField(wireName: 'IsIdn')
  bool get isIdn;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ExactMatchDomain.serializer, this));
  }

  static ExactMatchDomain fromJson(String jsonString) {
    return serializers.deserializeWith(
        ExactMatchDomain.serializer, json.decode(jsonString));
  }

  static Serializer<ExactMatchDomain> get serializer =>
      _$exactMatchDomainSerializer;
}
