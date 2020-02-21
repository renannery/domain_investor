import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:domain_investor/estimated_value.dart';
import 'package:domain_investor/product.dart';
import 'package:domain_investor/recommended_domain.dart';

part 'domain.g.dart';

abstract class Domain implements Built<Domain, DomainBuilder> {
  @nullable
  String get domainId;

  @nullable
  String get name;

  @nullable
  String get tld;

  @nullable
  double get price;

  @nullable
  double get estimatedValue;

  Domain._();

  factory Domain([void Function(DomainBuilder) updates]) = _$Domain;

  factory Domain.fromProduct(RecommendedDomain recommendedDomain) {
    final recommendedBuilder = recommendedDomain.toBuilder();

    final builder = Domain().toBuilder();

    builder.name = recommendedBuilder.fqdn;
    builder.price = recommendedBuilder.usdPrice.toDouble();
    builder.tld = recommendedBuilder.extension;
    return builder.build();
  }

  static Serializer<Domain> get serializer => _$domainSerializer;
}
