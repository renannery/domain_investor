import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/estimated_value.dart';
import 'package:domain_investor/product.dart';
import 'package:domain_investor/recommended_domain.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Domain,
  Product,
  PriceInfo,
  RecommendedDomain,
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
