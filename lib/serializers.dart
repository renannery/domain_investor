import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/estimated_value.dart';
import 'package:domain_investor/exact_match_domain.dart';
import 'package:domain_investor/manage_domains_response.dart';
import 'package:domain_investor/model/shopper_model.dart';
import 'package:domain_investor/product.dart';
import 'package:domain_investor/recommended_domain.dart';
import 'package:domain_investor/registered_domain.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Domain,
  Product,
  PriceInfo,
  RecommendedDomain,
  ExactMatchDomain,
  RegisteredDomain,
  ManageDomainsResponse,
  ContactAdmin,
  ContactBilling,
  ContactRegistrant,
  ContactTech,
  AddressMailing,
  Shopper,
  EstimatedValue,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(
    value.map((value) => deserialize<T>(value)).toList(growable: true));

Map serialize<T>(dynamic value) =>
    serializers.serializeWith<T>(serializers.serializerForType(T), value);
