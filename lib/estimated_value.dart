library estimated_value;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:domain_investor/serializers.dart';

part 'estimated_value.g.dart';

abstract class EstimatedValue
    implements Built<EstimatedValue, EstimatedValueBuilder> {
  EstimatedValue._();

  factory EstimatedValue([updates(EstimatedValueBuilder b)]) = _$EstimatedValue;

  @BuiltValueField(wireName: 'status')
  String get status;
  @BuiltValueField(wireName: 'domain')
  String get domain;
  BuiltList<int> get govalueLimits;
  @BuiltValueField(wireName: 'govalue')
  int get govalue;
  String toJson() {
    return json
        .encode(serializers.serializeWith(EstimatedValue.serializer, this));
  }

  static EstimatedValue fromJson(String jsonString) {
    return serializers.deserializeWith(
        EstimatedValue.serializer, json.decode(jsonString));
  }

  static Serializer<EstimatedValue> get serializer =>
      _$estimatedValueSerializer;
}
