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
  String get displayPrice;

  @nullable
  double get estimatedValue;

  @nullable
  bool get isPremium;

  @nullable
  bool get isAvailable;

  Domain._();

  factory Domain([void Function(DomainBuilder) updates]) = _$Domain;

  factory Domain.fromRecommended(RecommendedDomain recommendedDomain) {
    final recommendedBuilder = recommendedDomain.toBuilder();

    final builder = Domain().toBuilder();

    builder.name = recommendedBuilder.fqdn;
    builder.price = recommendedBuilder.price.toDouble();
    builder.displayPrice = recommendedBuilder.priceDisplay;
    builder.tld = recommendedBuilder.extension;
    builder.isPremium = recommendedBuilder?.inventory == "premium";
    return builder.build();
  }

  factory Domain.fromProduct(String fqdn, Product product) {
    final productBuilder = product.toBuilder();

    final builder = Domain().toBuilder();

    builder.name = fqdn;
    builder.price = productBuilder.priceInfo.currentPrice.toDouble();
    builder.displayPrice = productBuilder.priceInfo.currentPriceDisplay;
    builder.tld = productBuilder.tld;
    return builder.build();
  }

  static Serializer<Domain> get serializer => _$domainSerializer;
}
