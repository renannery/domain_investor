library shopper;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:domain_investor/serializers.dart';

part 'shopper_model.g.dart';

abstract class Shopper implements Built<Shopper, ShopperBuilder> {
  Shopper._();

  factory Shopper([updates(ShopperBuilder b)]) = _$Shopper;

  @nullable @BuiltValueField(wireName: 'shopperId')
  String get shopperId;
  @nullable @BuiltValueField(wireName: 'marketId')
  String get marketId;
  @nullable @BuiltValueField(wireName: 'email')
  String get email;
  @nullable @BuiltValueField(wireName: 'nameFirst')
  String get nameFirst;
  @nullable @BuiltValueField(wireName: 'nameLast')
  String get nameLast;
  String toJson() {
    return json.encode(serializers.serializeWith(Shopper.serializer, this));
  }

  static Shopper fromJson(String jsonString) {
    return serializers.deserializeWith(
        Shopper.serializer, json.decode(jsonString));
  }

  static Serializer<Shopper> get serializer => _$shopperSerializer;
}
