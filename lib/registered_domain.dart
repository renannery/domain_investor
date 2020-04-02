import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:domain_investor/serializers.dart';

part 'registered_domain.g.dart';

abstract class RegisteredDomain
    implements Built<RegisteredDomain, RegisteredDomainBuilder> {
  RegisteredDomain._();

  factory RegisteredDomain([updates(RegisteredDomainBuilder b)]) =
      _$RegisteredDomain;

  @nullable
  @BuiltValueField(wireName: 'authCode')
  String get authCode;
  @nullable
  @BuiltValueField(wireName: 'contactAdmin')
  ContactAdmin get contactAdmin;
  @nullable
  @BuiltValueField(wireName: 'contactBilling')
  ContactBilling get contactBilling;
  @nullable
  @BuiltValueField(wireName: 'contactRegistrant')
  ContactRegistrant get contactRegistrant;
  @nullable
  @BuiltValueField(wireName: 'contactTech')
  ContactTech get contactTech;
  @nullable
  @BuiltValueField(wireName: 'createdAt')
  String get createdAt;
  @nullable
  @BuiltValueField(wireName: 'deletedAt')
  String get deletedAt;
  @nullable
  @BuiltValueField(wireName: 'transferAwayEligibleAt')
  String get transferAwayEligibleAt;
  @nullable
  @BuiltValueField(wireName: 'domain')
  String get domain;
  @nullable
  @BuiltValueField(wireName: 'domainId')
  int get domainId;
  @nullable
  @BuiltValueField(wireName: 'expirationProtected')
  bool get expirationProtected;
  @nullable
  @BuiltValueField(wireName: 'expires')
  String get expires;
  @nullable
  @BuiltValueField(wireName: 'holdRegistrar')
  bool get holdRegistrar;
  @nullable
  @BuiltValueField(wireName: 'locked')
  bool get locked;
  @nullable
  @BuiltValueField(wireName: 'nameServers')
  BuiltList<String> get nameServers;
  @nullable
  @BuiltValueField(wireName: 'privacy')
  bool get privacy;
  @nullable
  @BuiltValueField(wireName: 'renewAuto')
  bool get renewAuto;
  @nullable
  @BuiltValueField(wireName: 'renewDeadline')
  String get renewDeadline;
  @nullable
  @BuiltValueField(wireName: 'renewable')
  bool get renewable;
  @nullable
  @BuiltValueField(wireName: 'status')
  String get status;
  @nullable
  @BuiltValueField(wireName: 'transferProtected')
  bool get transferProtected;
  String toJson() {
    return json
        .encode(serializers.serializeWith(RegisteredDomain.serializer, this));
  }

  static RegisteredDomain fromJson(String jsonString) {
    return serializers.deserializeWith(
        RegisteredDomain.serializer, json.decode(jsonString));
  }

  static Serializer<RegisteredDomain> get serializer =>
      _$registeredDomainSerializer;
}

abstract class ContactAdmin
    implements Built<ContactAdmin, ContactAdminBuilder> {
  ContactAdmin._();

  factory ContactAdmin([updates(ContactAdminBuilder b)]) = _$ContactAdmin;

  @nullable
  @BuiltValueField(wireName: 'addressMailing')
  AddressMailing get addressMailing;
  @nullable
  @BuiltValueField(wireName: 'email')
  String get email;
  @nullable
  @BuiltValueField(wireName: 'fax')
  String get fax;
  @nullable
  @BuiltValueField(wireName: 'jobTitle')
  String get jobTitle;
  @nullable
  @BuiltValueField(wireName: 'nameFirst')
  String get nameFirst;
  @nullable
  @BuiltValueField(wireName: 'nameLast')
  String get nameLast;
  @nullable
  @BuiltValueField(wireName: 'nameMiddle')
  String get nameMiddle;
  @nullable
  @BuiltValueField(wireName: 'organization')
  String get organization;
  @nullable
  @BuiltValueField(wireName: 'phone')
  String get phone;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ContactAdmin.serializer, this));
  }

  static ContactAdmin fromJson(String jsonString) {
    return serializers.deserializeWith(
        ContactAdmin.serializer, json.decode(jsonString));
  }

  static Serializer<ContactAdmin> get serializer => _$contactAdminSerializer;
}

abstract class ContactBilling
    implements Built<ContactBilling, ContactBillingBuilder> {
  ContactBilling._();

  factory ContactBilling([updates(ContactBillingBuilder b)]) = _$ContactBilling;

  @nullable
  @BuiltValueField(wireName: 'addressMailing')
  AddressMailing get addressMailing;
  @nullable
  @BuiltValueField(wireName: 'email')
  String get email;
  @nullable
  @BuiltValueField(wireName: 'fax')
  String get fax;
  @nullable
  @BuiltValueField(wireName: 'jobTitle')
  String get jobTitle;
  @nullable
  @BuiltValueField(wireName: 'nameFirst')
  String get nameFirst;
  @nullable
  @BuiltValueField(wireName: 'nameLast')
  String get nameLast;
  @nullable
  @BuiltValueField(wireName: 'nameMiddle')
  String get nameMiddle;
  @nullable
  @BuiltValueField(wireName: 'organization')
  String get organization;
  @nullable
  @BuiltValueField(wireName: 'phone')
  String get phone;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ContactBilling.serializer, this));
  }

  static ContactBilling fromJson(String jsonString) {
    return serializers.deserializeWith(
        ContactBilling.serializer, json.decode(jsonString));
  }

  static Serializer<ContactBilling> get serializer =>
      _$contactBillingSerializer;
}

abstract class ContactRegistrant
    implements Built<ContactRegistrant, ContactRegistrantBuilder> {
  ContactRegistrant._();

  factory ContactRegistrant([updates(ContactRegistrantBuilder b)]) =
      _$ContactRegistrant;

  @nullable
  @BuiltValueField(wireName: 'addressMailing')
  AddressMailing get addressMailing;
  @nullable
  @BuiltValueField(wireName: 'email')
  String get email;
  @nullable
  @BuiltValueField(wireName: 'fax')
  String get fax;
  @nullable
  @BuiltValueField(wireName: 'jobTitle')
  String get jobTitle;
  @nullable
  @BuiltValueField(wireName: 'nameFirst')
  String get nameFirst;
  @nullable
  @BuiltValueField(wireName: 'nameLast')
  String get nameLast;
  @nullable
  @BuiltValueField(wireName: 'nameMiddle')
  String get nameMiddle;
  @nullable
  @BuiltValueField(wireName: 'organization')
  String get organization;
  @nullable
  @BuiltValueField(wireName: 'phone')
  String get phone;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ContactRegistrant.serializer, this));
  }

  static ContactRegistrant fromJson(String jsonString) {
    return serializers.deserializeWith(
        ContactRegistrant.serializer, json.decode(jsonString));
  }

  static Serializer<ContactRegistrant> get serializer =>
      _$contactRegistrantSerializer;
}

abstract class ContactTech implements Built<ContactTech, ContactTechBuilder> {
  ContactTech._();

  factory ContactTech([updates(ContactTechBuilder b)]) = _$ContactTech;

  @nullable
  @BuiltValueField(wireName: 'addressMailing')
  AddressMailing get addressMailing;
  @nullable
  @BuiltValueField(wireName: 'email')
  String get email;
  @nullable
  @BuiltValueField(wireName: 'fax')
  String get fax;
  @nullable
  @BuiltValueField(wireName: 'jobTitle')
  String get jobTitle;
  @nullable
  @BuiltValueField(wireName: 'nameFirst')
  String get nameFirst;
  @nullable
  @BuiltValueField(wireName: 'nameLast')
  String get nameLast;
  @nullable
  @BuiltValueField(wireName: 'nameMiddle')
  String get nameMiddle;
  @nullable
  @BuiltValueField(wireName: 'organization')
  String get organization;
  @nullable
  @BuiltValueField(wireName: 'phone')
  String get phone;
  String toJson() {
    return json.encode(serializers.serializeWith(ContactTech.serializer, this));
  }

  static ContactTech fromJson(String jsonString) {
    return serializers.deserializeWith(
        ContactTech.serializer, json.decode(jsonString));
  }

  static Serializer<ContactTech> get serializer => _$contactTechSerializer;
}

abstract class AddressMailing
    implements Built<AddressMailing, AddressMailingBuilder> {
  AddressMailing._();

  factory AddressMailing([updates(AddressMailingBuilder b)]) = _$AddressMailing;

  @nullable
  @BuiltValueField(wireName: 'address1')
  String get address1;
  @nullable
  @BuiltValueField(wireName: 'address2')
  String get address2;
  @nullable
  @BuiltValueField(wireName: 'city')
  String get city;
  @nullable
  @BuiltValueField(wireName: 'country')
  String get country;
  @nullable
  @BuiltValueField(wireName: 'postalCode')
  String get postalCode;
  @nullable
  @BuiltValueField(wireName: 'state')
  String get state;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AddressMailing.serializer, this));
  }

  static AddressMailing fromJson(String jsonString) {
    return serializers.deserializeWith(
        AddressMailing.serializer, json.decode(jsonString));
  }

  static Serializer<AddressMailing> get serializer =>
      _$addressMailingSerializer;
}
