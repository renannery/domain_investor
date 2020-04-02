import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:domain_investor/registered_domain.dart';
import 'package:domain_investor/serializers.dart';

part 'manage_domains_response.g.dart';

abstract class ManageDomainsResponse
    implements Built<ManageDomainsResponse, ManageDomainsResponseBuilder> {
  ManageDomainsResponse._();

  factory ManageDomainsResponse([updates(ManageDomainsResponseBuilder b)]) =
      _$ManageDomainsResponse;

  @BuiltValueField(wireName: 'firstDomainName')
  String get firstDomainName;
  @BuiltValueField(wireName: 'lastDomainName')
  String get lastDomainName;
  @BuiltValueField(wireName: 'tlds')
  BuiltList<String> get tlds;
  @BuiltValueField(wireName: 'domains')
  BuiltList<RegisteredDomain> get domains;
  @BuiltValueField(wireName: 'totalInSearch')
  int get totalInSearch;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ManageDomainsResponse.serializer, this));
  }

  static ManageDomainsResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ManageDomainsResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ManageDomainsResponse> get serializer =>
      _$manageDomainsResponseSerializer;
}
