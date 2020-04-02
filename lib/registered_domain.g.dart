// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_domain.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegisteredDomain> _$registeredDomainSerializer =
    new _$RegisteredDomainSerializer();
Serializer<ContactAdmin> _$contactAdminSerializer =
    new _$ContactAdminSerializer();
Serializer<ContactBilling> _$contactBillingSerializer =
    new _$ContactBillingSerializer();
Serializer<ContactRegistrant> _$contactRegistrantSerializer =
    new _$ContactRegistrantSerializer();
Serializer<ContactTech> _$contactTechSerializer = new _$ContactTechSerializer();
Serializer<AddressMailing> _$addressMailingSerializer =
    new _$AddressMailingSerializer();

class _$RegisteredDomainSerializer
    implements StructuredSerializer<RegisteredDomain> {
  @override
  final Iterable<Type> types = const [RegisteredDomain, _$RegisteredDomain];
  @override
  final String wireName = 'RegisteredDomain';

  @override
  Iterable<Object> serialize(Serializers serializers, RegisteredDomain object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.authCode != null) {
      result
        ..add('authCode')
        ..add(serializers.serialize(object.authCode,
            specifiedType: const FullType(String)));
    }
    if (object.contactAdmin != null) {
      result
        ..add('contactAdmin')
        ..add(serializers.serialize(object.contactAdmin,
            specifiedType: const FullType(ContactAdmin)));
    }
    if (object.contactBilling != null) {
      result
        ..add('contactBilling')
        ..add(serializers.serialize(object.contactBilling,
            specifiedType: const FullType(ContactBilling)));
    }
    if (object.contactRegistrant != null) {
      result
        ..add('contactRegistrant')
        ..add(serializers.serialize(object.contactRegistrant,
            specifiedType: const FullType(ContactRegistrant)));
    }
    if (object.contactTech != null) {
      result
        ..add('contactTech')
        ..add(serializers.serialize(object.contactTech,
            specifiedType: const FullType(ContactTech)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.deletedAt != null) {
      result
        ..add('deletedAt')
        ..add(serializers.serialize(object.deletedAt,
            specifiedType: const FullType(String)));
    }
    if (object.transferAwayEligibleAt != null) {
      result
        ..add('transferAwayEligibleAt')
        ..add(serializers.serialize(object.transferAwayEligibleAt,
            specifiedType: const FullType(String)));
    }
    if (object.domain != null) {
      result
        ..add('domain')
        ..add(serializers.serialize(object.domain,
            specifiedType: const FullType(String)));
    }
    if (object.domainId != null) {
      result
        ..add('domainId')
        ..add(serializers.serialize(object.domainId,
            specifiedType: const FullType(int)));
    }
    if (object.expirationProtected != null) {
      result
        ..add('expirationProtected')
        ..add(serializers.serialize(object.expirationProtected,
            specifiedType: const FullType(bool)));
    }
    if (object.expires != null) {
      result
        ..add('expires')
        ..add(serializers.serialize(object.expires,
            specifiedType: const FullType(String)));
    }
    if (object.holdRegistrar != null) {
      result
        ..add('holdRegistrar')
        ..add(serializers.serialize(object.holdRegistrar,
            specifiedType: const FullType(bool)));
    }
    if (object.locked != null) {
      result
        ..add('locked')
        ..add(serializers.serialize(object.locked,
            specifiedType: const FullType(bool)));
    }
    if (object.nameServers != null) {
      result
        ..add('nameServers')
        ..add(serializers.serialize(object.nameServers,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.privacy != null) {
      result
        ..add('privacy')
        ..add(serializers.serialize(object.privacy,
            specifiedType: const FullType(bool)));
    }
    if (object.renewAuto != null) {
      result
        ..add('renewAuto')
        ..add(serializers.serialize(object.renewAuto,
            specifiedType: const FullType(bool)));
    }
    if (object.renewDeadline != null) {
      result
        ..add('renewDeadline')
        ..add(serializers.serialize(object.renewDeadline,
            specifiedType: const FullType(String)));
    }
    if (object.renewable != null) {
      result
        ..add('renewable')
        ..add(serializers.serialize(object.renewable,
            specifiedType: const FullType(bool)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.transferProtected != null) {
      result
        ..add('transferProtected')
        ..add(serializers.serialize(object.transferProtected,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  RegisteredDomain deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisteredDomainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'authCode':
          result.authCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contactAdmin':
          result.contactAdmin.replace(serializers.deserialize(value,
              specifiedType: const FullType(ContactAdmin)) as ContactAdmin);
          break;
        case 'contactBilling':
          result.contactBilling.replace(serializers.deserialize(value,
              specifiedType: const FullType(ContactBilling)) as ContactBilling);
          break;
        case 'contactRegistrant':
          result.contactRegistrant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ContactRegistrant))
              as ContactRegistrant);
          break;
        case 'contactTech':
          result.contactTech.replace(serializers.deserialize(value,
              specifiedType: const FullType(ContactTech)) as ContactTech);
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deletedAt':
          result.deletedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transferAwayEligibleAt':
          result.transferAwayEligibleAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'domain':
          result.domain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'domainId':
          result.domainId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'expirationProtected':
          result.expirationProtected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'expires':
          result.expires = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'holdRegistrar':
          result.holdRegistrar = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'nameServers':
          result.nameServers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'privacy':
          result.privacy = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'renewAuto':
          result.renewAuto = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'renewDeadline':
          result.renewDeadline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'renewable':
          result.renewable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transferProtected':
          result.transferProtected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactAdminSerializer implements StructuredSerializer<ContactAdmin> {
  @override
  final Iterable<Type> types = const [ContactAdmin, _$ContactAdmin];
  @override
  final String wireName = 'ContactAdmin';

  @override
  Iterable<Object> serialize(Serializers serializers, ContactAdmin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressMailing != null) {
      result
        ..add('addressMailing')
        ..add(serializers.serialize(object.addressMailing,
            specifiedType: const FullType(AddressMailing)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.fax != null) {
      result
        ..add('fax')
        ..add(serializers.serialize(object.fax,
            specifiedType: const FullType(String)));
    }
    if (object.jobTitle != null) {
      result
        ..add('jobTitle')
        ..add(serializers.serialize(object.jobTitle,
            specifiedType: const FullType(String)));
    }
    if (object.nameFirst != null) {
      result
        ..add('nameFirst')
        ..add(serializers.serialize(object.nameFirst,
            specifiedType: const FullType(String)));
    }
    if (object.nameLast != null) {
      result
        ..add('nameLast')
        ..add(serializers.serialize(object.nameLast,
            specifiedType: const FullType(String)));
    }
    if (object.nameMiddle != null) {
      result
        ..add('nameMiddle')
        ..add(serializers.serialize(object.nameMiddle,
            specifiedType: const FullType(String)));
    }
    if (object.organization != null) {
      result
        ..add('organization')
        ..add(serializers.serialize(object.organization,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContactAdmin deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactAdminBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressMailing':
          result.addressMailing.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressMailing)) as AddressMailing);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fax':
          result.fax = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobTitle':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameFirst':
          result.nameFirst = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameLast':
          result.nameLast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameMiddle':
          result.nameMiddle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization':
          result.organization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactBillingSerializer
    implements StructuredSerializer<ContactBilling> {
  @override
  final Iterable<Type> types = const [ContactBilling, _$ContactBilling];
  @override
  final String wireName = 'ContactBilling';

  @override
  Iterable<Object> serialize(Serializers serializers, ContactBilling object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressMailing != null) {
      result
        ..add('addressMailing')
        ..add(serializers.serialize(object.addressMailing,
            specifiedType: const FullType(AddressMailing)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.fax != null) {
      result
        ..add('fax')
        ..add(serializers.serialize(object.fax,
            specifiedType: const FullType(String)));
    }
    if (object.jobTitle != null) {
      result
        ..add('jobTitle')
        ..add(serializers.serialize(object.jobTitle,
            specifiedType: const FullType(String)));
    }
    if (object.nameFirst != null) {
      result
        ..add('nameFirst')
        ..add(serializers.serialize(object.nameFirst,
            specifiedType: const FullType(String)));
    }
    if (object.nameLast != null) {
      result
        ..add('nameLast')
        ..add(serializers.serialize(object.nameLast,
            specifiedType: const FullType(String)));
    }
    if (object.nameMiddle != null) {
      result
        ..add('nameMiddle')
        ..add(serializers.serialize(object.nameMiddle,
            specifiedType: const FullType(String)));
    }
    if (object.organization != null) {
      result
        ..add('organization')
        ..add(serializers.serialize(object.organization,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContactBilling deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactBillingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressMailing':
          result.addressMailing.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressMailing)) as AddressMailing);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fax':
          result.fax = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobTitle':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameFirst':
          result.nameFirst = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameLast':
          result.nameLast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameMiddle':
          result.nameMiddle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization':
          result.organization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactRegistrantSerializer
    implements StructuredSerializer<ContactRegistrant> {
  @override
  final Iterable<Type> types = const [ContactRegistrant, _$ContactRegistrant];
  @override
  final String wireName = 'ContactRegistrant';

  @override
  Iterable<Object> serialize(Serializers serializers, ContactRegistrant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressMailing != null) {
      result
        ..add('addressMailing')
        ..add(serializers.serialize(object.addressMailing,
            specifiedType: const FullType(AddressMailing)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.fax != null) {
      result
        ..add('fax')
        ..add(serializers.serialize(object.fax,
            specifiedType: const FullType(String)));
    }
    if (object.jobTitle != null) {
      result
        ..add('jobTitle')
        ..add(serializers.serialize(object.jobTitle,
            specifiedType: const FullType(String)));
    }
    if (object.nameFirst != null) {
      result
        ..add('nameFirst')
        ..add(serializers.serialize(object.nameFirst,
            specifiedType: const FullType(String)));
    }
    if (object.nameLast != null) {
      result
        ..add('nameLast')
        ..add(serializers.serialize(object.nameLast,
            specifiedType: const FullType(String)));
    }
    if (object.nameMiddle != null) {
      result
        ..add('nameMiddle')
        ..add(serializers.serialize(object.nameMiddle,
            specifiedType: const FullType(String)));
    }
    if (object.organization != null) {
      result
        ..add('organization')
        ..add(serializers.serialize(object.organization,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContactRegistrant deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactRegistrantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressMailing':
          result.addressMailing.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressMailing)) as AddressMailing);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fax':
          result.fax = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobTitle':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameFirst':
          result.nameFirst = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameLast':
          result.nameLast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameMiddle':
          result.nameMiddle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization':
          result.organization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactTechSerializer implements StructuredSerializer<ContactTech> {
  @override
  final Iterable<Type> types = const [ContactTech, _$ContactTech];
  @override
  final String wireName = 'ContactTech';

  @override
  Iterable<Object> serialize(Serializers serializers, ContactTech object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressMailing != null) {
      result
        ..add('addressMailing')
        ..add(serializers.serialize(object.addressMailing,
            specifiedType: const FullType(AddressMailing)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.fax != null) {
      result
        ..add('fax')
        ..add(serializers.serialize(object.fax,
            specifiedType: const FullType(String)));
    }
    if (object.jobTitle != null) {
      result
        ..add('jobTitle')
        ..add(serializers.serialize(object.jobTitle,
            specifiedType: const FullType(String)));
    }
    if (object.nameFirst != null) {
      result
        ..add('nameFirst')
        ..add(serializers.serialize(object.nameFirst,
            specifiedType: const FullType(String)));
    }
    if (object.nameLast != null) {
      result
        ..add('nameLast')
        ..add(serializers.serialize(object.nameLast,
            specifiedType: const FullType(String)));
    }
    if (object.nameMiddle != null) {
      result
        ..add('nameMiddle')
        ..add(serializers.serialize(object.nameMiddle,
            specifiedType: const FullType(String)));
    }
    if (object.organization != null) {
      result
        ..add('organization')
        ..add(serializers.serialize(object.organization,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContactTech deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactTechBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressMailing':
          result.addressMailing.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressMailing)) as AddressMailing);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fax':
          result.fax = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobTitle':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameFirst':
          result.nameFirst = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameLast':
          result.nameLast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameMiddle':
          result.nameMiddle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization':
          result.organization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddressMailingSerializer
    implements StructuredSerializer<AddressMailing> {
  @override
  final Iterable<Type> types = const [AddressMailing, _$AddressMailing];
  @override
  final String wireName = 'AddressMailing';

  @override
  Iterable<Object> serialize(Serializers serializers, AddressMailing object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.address1 != null) {
      result
        ..add('address1')
        ..add(serializers.serialize(object.address1,
            specifiedType: const FullType(String)));
    }
    if (object.address2 != null) {
      result
        ..add('address2')
        ..add(serializers.serialize(object.address2,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.country != null) {
      result
        ..add('country')
        ..add(serializers.serialize(object.country,
            specifiedType: const FullType(String)));
    }
    if (object.postalCode != null) {
      result
        ..add('postalCode')
        ..add(serializers.serialize(object.postalCode,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddressMailing deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressMailingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'address1':
          result.address1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address2':
          result.address2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RegisteredDomain extends RegisteredDomain {
  @override
  final String authCode;
  @override
  final ContactAdmin contactAdmin;
  @override
  final ContactBilling contactBilling;
  @override
  final ContactRegistrant contactRegistrant;
  @override
  final ContactTech contactTech;
  @override
  final String createdAt;
  @override
  final String deletedAt;
  @override
  final String transferAwayEligibleAt;
  @override
  final String domain;
  @override
  final int domainId;
  @override
  final bool expirationProtected;
  @override
  final String expires;
  @override
  final bool holdRegistrar;
  @override
  final bool locked;
  @override
  final BuiltList<String> nameServers;
  @override
  final bool privacy;
  @override
  final bool renewAuto;
  @override
  final String renewDeadline;
  @override
  final bool renewable;
  @override
  final String status;
  @override
  final bool transferProtected;

  factory _$RegisteredDomain(
          [void Function(RegisteredDomainBuilder) updates]) =>
      (new RegisteredDomainBuilder()..update(updates)).build();

  _$RegisteredDomain._(
      {this.authCode,
      this.contactAdmin,
      this.contactBilling,
      this.contactRegistrant,
      this.contactTech,
      this.createdAt,
      this.deletedAt,
      this.transferAwayEligibleAt,
      this.domain,
      this.domainId,
      this.expirationProtected,
      this.expires,
      this.holdRegistrar,
      this.locked,
      this.nameServers,
      this.privacy,
      this.renewAuto,
      this.renewDeadline,
      this.renewable,
      this.status,
      this.transferProtected})
      : super._();

  @override
  RegisteredDomain rebuild(void Function(RegisteredDomainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisteredDomainBuilder toBuilder() =>
      new RegisteredDomainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisteredDomain &&
        authCode == other.authCode &&
        contactAdmin == other.contactAdmin &&
        contactBilling == other.contactBilling &&
        contactRegistrant == other.contactRegistrant &&
        contactTech == other.contactTech &&
        createdAt == other.createdAt &&
        deletedAt == other.deletedAt &&
        transferAwayEligibleAt == other.transferAwayEligibleAt &&
        domain == other.domain &&
        domainId == other.domainId &&
        expirationProtected == other.expirationProtected &&
        expires == other.expires &&
        holdRegistrar == other.holdRegistrar &&
        locked == other.locked &&
        nameServers == other.nameServers &&
        privacy == other.privacy &&
        renewAuto == other.renewAuto &&
        renewDeadline == other.renewDeadline &&
        renewable == other.renewable &&
        status == other.status &&
        transferProtected == other.transferProtected;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, authCode.hashCode), contactAdmin.hashCode),
                                                                                contactBilling.hashCode),
                                                                            contactRegistrant.hashCode),
                                                                        contactTech.hashCode),
                                                                    createdAt.hashCode),
                                                                deletedAt.hashCode),
                                                            transferAwayEligibleAt.hashCode),
                                                        domain.hashCode),
                                                    domainId.hashCode),
                                                expirationProtected.hashCode),
                                            expires.hashCode),
                                        holdRegistrar.hashCode),
                                    locked.hashCode),
                                nameServers.hashCode),
                            privacy.hashCode),
                        renewAuto.hashCode),
                    renewDeadline.hashCode),
                renewable.hashCode),
            status.hashCode),
        transferProtected.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisteredDomain')
          ..add('authCode', authCode)
          ..add('contactAdmin', contactAdmin)
          ..add('contactBilling', contactBilling)
          ..add('contactRegistrant', contactRegistrant)
          ..add('contactTech', contactTech)
          ..add('createdAt', createdAt)
          ..add('deletedAt', deletedAt)
          ..add('transferAwayEligibleAt', transferAwayEligibleAt)
          ..add('domain', domain)
          ..add('domainId', domainId)
          ..add('expirationProtected', expirationProtected)
          ..add('expires', expires)
          ..add('holdRegistrar', holdRegistrar)
          ..add('locked', locked)
          ..add('nameServers', nameServers)
          ..add('privacy', privacy)
          ..add('renewAuto', renewAuto)
          ..add('renewDeadline', renewDeadline)
          ..add('renewable', renewable)
          ..add('status', status)
          ..add('transferProtected', transferProtected))
        .toString();
  }
}

class RegisteredDomainBuilder
    implements Builder<RegisteredDomain, RegisteredDomainBuilder> {
  _$RegisteredDomain _$v;

  String _authCode;
  String get authCode => _$this._authCode;
  set authCode(String authCode) => _$this._authCode = authCode;

  ContactAdminBuilder _contactAdmin;
  ContactAdminBuilder get contactAdmin =>
      _$this._contactAdmin ??= new ContactAdminBuilder();
  set contactAdmin(ContactAdminBuilder contactAdmin) =>
      _$this._contactAdmin = contactAdmin;

  ContactBillingBuilder _contactBilling;
  ContactBillingBuilder get contactBilling =>
      _$this._contactBilling ??= new ContactBillingBuilder();
  set contactBilling(ContactBillingBuilder contactBilling) =>
      _$this._contactBilling = contactBilling;

  ContactRegistrantBuilder _contactRegistrant;
  ContactRegistrantBuilder get contactRegistrant =>
      _$this._contactRegistrant ??= new ContactRegistrantBuilder();
  set contactRegistrant(ContactRegistrantBuilder contactRegistrant) =>
      _$this._contactRegistrant = contactRegistrant;

  ContactTechBuilder _contactTech;
  ContactTechBuilder get contactTech =>
      _$this._contactTech ??= new ContactTechBuilder();
  set contactTech(ContactTechBuilder contactTech) =>
      _$this._contactTech = contactTech;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _deletedAt;
  String get deletedAt => _$this._deletedAt;
  set deletedAt(String deletedAt) => _$this._deletedAt = deletedAt;

  String _transferAwayEligibleAt;
  String get transferAwayEligibleAt => _$this._transferAwayEligibleAt;
  set transferAwayEligibleAt(String transferAwayEligibleAt) =>
      _$this._transferAwayEligibleAt = transferAwayEligibleAt;

  String _domain;
  String get domain => _$this._domain;
  set domain(String domain) => _$this._domain = domain;

  int _domainId;
  int get domainId => _$this._domainId;
  set domainId(int domainId) => _$this._domainId = domainId;

  bool _expirationProtected;
  bool get expirationProtected => _$this._expirationProtected;
  set expirationProtected(bool expirationProtected) =>
      _$this._expirationProtected = expirationProtected;

  String _expires;
  String get expires => _$this._expires;
  set expires(String expires) => _$this._expires = expires;

  bool _holdRegistrar;
  bool get holdRegistrar => _$this._holdRegistrar;
  set holdRegistrar(bool holdRegistrar) =>
      _$this._holdRegistrar = holdRegistrar;

  bool _locked;
  bool get locked => _$this._locked;
  set locked(bool locked) => _$this._locked = locked;

  ListBuilder<String> _nameServers;
  ListBuilder<String> get nameServers =>
      _$this._nameServers ??= new ListBuilder<String>();
  set nameServers(ListBuilder<String> nameServers) =>
      _$this._nameServers = nameServers;

  bool _privacy;
  bool get privacy => _$this._privacy;
  set privacy(bool privacy) => _$this._privacy = privacy;

  bool _renewAuto;
  bool get renewAuto => _$this._renewAuto;
  set renewAuto(bool renewAuto) => _$this._renewAuto = renewAuto;

  String _renewDeadline;
  String get renewDeadline => _$this._renewDeadline;
  set renewDeadline(String renewDeadline) =>
      _$this._renewDeadline = renewDeadline;

  bool _renewable;
  bool get renewable => _$this._renewable;
  set renewable(bool renewable) => _$this._renewable = renewable;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  bool _transferProtected;
  bool get transferProtected => _$this._transferProtected;
  set transferProtected(bool transferProtected) =>
      _$this._transferProtected = transferProtected;

  RegisteredDomainBuilder();

  RegisteredDomainBuilder get _$this {
    if (_$v != null) {
      _authCode = _$v.authCode;
      _contactAdmin = _$v.contactAdmin?.toBuilder();
      _contactBilling = _$v.contactBilling?.toBuilder();
      _contactRegistrant = _$v.contactRegistrant?.toBuilder();
      _contactTech = _$v.contactTech?.toBuilder();
      _createdAt = _$v.createdAt;
      _deletedAt = _$v.deletedAt;
      _transferAwayEligibleAt = _$v.transferAwayEligibleAt;
      _domain = _$v.domain;
      _domainId = _$v.domainId;
      _expirationProtected = _$v.expirationProtected;
      _expires = _$v.expires;
      _holdRegistrar = _$v.holdRegistrar;
      _locked = _$v.locked;
      _nameServers = _$v.nameServers?.toBuilder();
      _privacy = _$v.privacy;
      _renewAuto = _$v.renewAuto;
      _renewDeadline = _$v.renewDeadline;
      _renewable = _$v.renewable;
      _status = _$v.status;
      _transferProtected = _$v.transferProtected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisteredDomain other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegisteredDomain;
  }

  @override
  void update(void Function(RegisteredDomainBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisteredDomain build() {
    _$RegisteredDomain _$result;
    try {
      _$result = _$v ??
          new _$RegisteredDomain._(
              authCode: authCode,
              contactAdmin: _contactAdmin?.build(),
              contactBilling: _contactBilling?.build(),
              contactRegistrant: _contactRegistrant?.build(),
              contactTech: _contactTech?.build(),
              createdAt: createdAt,
              deletedAt: deletedAt,
              transferAwayEligibleAt: transferAwayEligibleAt,
              domain: domain,
              domainId: domainId,
              expirationProtected: expirationProtected,
              expires: expires,
              holdRegistrar: holdRegistrar,
              locked: locked,
              nameServers: _nameServers?.build(),
              privacy: privacy,
              renewAuto: renewAuto,
              renewDeadline: renewDeadline,
              renewable: renewable,
              status: status,
              transferProtected: transferProtected);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contactAdmin';
        _contactAdmin?.build();
        _$failedField = 'contactBilling';
        _contactBilling?.build();
        _$failedField = 'contactRegistrant';
        _contactRegistrant?.build();
        _$failedField = 'contactTech';
        _contactTech?.build();

        _$failedField = 'nameServers';
        _nameServers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RegisteredDomain', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ContactAdmin extends ContactAdmin {
  @override
  final AddressMailing addressMailing;
  @override
  final String email;
  @override
  final String fax;
  @override
  final String jobTitle;
  @override
  final String nameFirst;
  @override
  final String nameLast;
  @override
  final String nameMiddle;
  @override
  final String organization;
  @override
  final String phone;

  factory _$ContactAdmin([void Function(ContactAdminBuilder) updates]) =>
      (new ContactAdminBuilder()..update(updates)).build();

  _$ContactAdmin._(
      {this.addressMailing,
      this.email,
      this.fax,
      this.jobTitle,
      this.nameFirst,
      this.nameLast,
      this.nameMiddle,
      this.organization,
      this.phone})
      : super._();

  @override
  ContactAdmin rebuild(void Function(ContactAdminBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactAdminBuilder toBuilder() => new ContactAdminBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactAdmin &&
        addressMailing == other.addressMailing &&
        email == other.email &&
        fax == other.fax &&
        jobTitle == other.jobTitle &&
        nameFirst == other.nameFirst &&
        nameLast == other.nameLast &&
        nameMiddle == other.nameMiddle &&
        organization == other.organization &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, addressMailing.hashCode),
                                    email.hashCode),
                                fax.hashCode),
                            jobTitle.hashCode),
                        nameFirst.hashCode),
                    nameLast.hashCode),
                nameMiddle.hashCode),
            organization.hashCode),
        phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactAdmin')
          ..add('addressMailing', addressMailing)
          ..add('email', email)
          ..add('fax', fax)
          ..add('jobTitle', jobTitle)
          ..add('nameFirst', nameFirst)
          ..add('nameLast', nameLast)
          ..add('nameMiddle', nameMiddle)
          ..add('organization', organization)
          ..add('phone', phone))
        .toString();
  }
}

class ContactAdminBuilder
    implements Builder<ContactAdmin, ContactAdminBuilder> {
  _$ContactAdmin _$v;

  AddressMailingBuilder _addressMailing;
  AddressMailingBuilder get addressMailing =>
      _$this._addressMailing ??= new AddressMailingBuilder();
  set addressMailing(AddressMailingBuilder addressMailing) =>
      _$this._addressMailing = addressMailing;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _fax;
  String get fax => _$this._fax;
  set fax(String fax) => _$this._fax = fax;

  String _jobTitle;
  String get jobTitle => _$this._jobTitle;
  set jobTitle(String jobTitle) => _$this._jobTitle = jobTitle;

  String _nameFirst;
  String get nameFirst => _$this._nameFirst;
  set nameFirst(String nameFirst) => _$this._nameFirst = nameFirst;

  String _nameLast;
  String get nameLast => _$this._nameLast;
  set nameLast(String nameLast) => _$this._nameLast = nameLast;

  String _nameMiddle;
  String get nameMiddle => _$this._nameMiddle;
  set nameMiddle(String nameMiddle) => _$this._nameMiddle = nameMiddle;

  String _organization;
  String get organization => _$this._organization;
  set organization(String organization) => _$this._organization = organization;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  ContactAdminBuilder();

  ContactAdminBuilder get _$this {
    if (_$v != null) {
      _addressMailing = _$v.addressMailing?.toBuilder();
      _email = _$v.email;
      _fax = _$v.fax;
      _jobTitle = _$v.jobTitle;
      _nameFirst = _$v.nameFirst;
      _nameLast = _$v.nameLast;
      _nameMiddle = _$v.nameMiddle;
      _organization = _$v.organization;
      _phone = _$v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactAdmin other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContactAdmin;
  }

  @override
  void update(void Function(ContactAdminBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactAdmin build() {
    _$ContactAdmin _$result;
    try {
      _$result = _$v ??
          new _$ContactAdmin._(
              addressMailing: _addressMailing?.build(),
              email: email,
              fax: fax,
              jobTitle: jobTitle,
              nameFirst: nameFirst,
              nameLast: nameLast,
              nameMiddle: nameMiddle,
              organization: organization,
              phone: phone);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addressMailing';
        _addressMailing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContactAdmin', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ContactBilling extends ContactBilling {
  @override
  final AddressMailing addressMailing;
  @override
  final String email;
  @override
  final String fax;
  @override
  final String jobTitle;
  @override
  final String nameFirst;
  @override
  final String nameLast;
  @override
  final String nameMiddle;
  @override
  final String organization;
  @override
  final String phone;

  factory _$ContactBilling([void Function(ContactBillingBuilder) updates]) =>
      (new ContactBillingBuilder()..update(updates)).build();

  _$ContactBilling._(
      {this.addressMailing,
      this.email,
      this.fax,
      this.jobTitle,
      this.nameFirst,
      this.nameLast,
      this.nameMiddle,
      this.organization,
      this.phone})
      : super._();

  @override
  ContactBilling rebuild(void Function(ContactBillingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactBillingBuilder toBuilder() =>
      new ContactBillingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactBilling &&
        addressMailing == other.addressMailing &&
        email == other.email &&
        fax == other.fax &&
        jobTitle == other.jobTitle &&
        nameFirst == other.nameFirst &&
        nameLast == other.nameLast &&
        nameMiddle == other.nameMiddle &&
        organization == other.organization &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, addressMailing.hashCode),
                                    email.hashCode),
                                fax.hashCode),
                            jobTitle.hashCode),
                        nameFirst.hashCode),
                    nameLast.hashCode),
                nameMiddle.hashCode),
            organization.hashCode),
        phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactBilling')
          ..add('addressMailing', addressMailing)
          ..add('email', email)
          ..add('fax', fax)
          ..add('jobTitle', jobTitle)
          ..add('nameFirst', nameFirst)
          ..add('nameLast', nameLast)
          ..add('nameMiddle', nameMiddle)
          ..add('organization', organization)
          ..add('phone', phone))
        .toString();
  }
}

class ContactBillingBuilder
    implements Builder<ContactBilling, ContactBillingBuilder> {
  _$ContactBilling _$v;

  AddressMailingBuilder _addressMailing;
  AddressMailingBuilder get addressMailing =>
      _$this._addressMailing ??= new AddressMailingBuilder();
  set addressMailing(AddressMailingBuilder addressMailing) =>
      _$this._addressMailing = addressMailing;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _fax;
  String get fax => _$this._fax;
  set fax(String fax) => _$this._fax = fax;

  String _jobTitle;
  String get jobTitle => _$this._jobTitle;
  set jobTitle(String jobTitle) => _$this._jobTitle = jobTitle;

  String _nameFirst;
  String get nameFirst => _$this._nameFirst;
  set nameFirst(String nameFirst) => _$this._nameFirst = nameFirst;

  String _nameLast;
  String get nameLast => _$this._nameLast;
  set nameLast(String nameLast) => _$this._nameLast = nameLast;

  String _nameMiddle;
  String get nameMiddle => _$this._nameMiddle;
  set nameMiddle(String nameMiddle) => _$this._nameMiddle = nameMiddle;

  String _organization;
  String get organization => _$this._organization;
  set organization(String organization) => _$this._organization = organization;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  ContactBillingBuilder();

  ContactBillingBuilder get _$this {
    if (_$v != null) {
      _addressMailing = _$v.addressMailing?.toBuilder();
      _email = _$v.email;
      _fax = _$v.fax;
      _jobTitle = _$v.jobTitle;
      _nameFirst = _$v.nameFirst;
      _nameLast = _$v.nameLast;
      _nameMiddle = _$v.nameMiddle;
      _organization = _$v.organization;
      _phone = _$v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactBilling other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContactBilling;
  }

  @override
  void update(void Function(ContactBillingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactBilling build() {
    _$ContactBilling _$result;
    try {
      _$result = _$v ??
          new _$ContactBilling._(
              addressMailing: _addressMailing?.build(),
              email: email,
              fax: fax,
              jobTitle: jobTitle,
              nameFirst: nameFirst,
              nameLast: nameLast,
              nameMiddle: nameMiddle,
              organization: organization,
              phone: phone);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addressMailing';
        _addressMailing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContactBilling', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ContactRegistrant extends ContactRegistrant {
  @override
  final AddressMailing addressMailing;
  @override
  final String email;
  @override
  final String fax;
  @override
  final String jobTitle;
  @override
  final String nameFirst;
  @override
  final String nameLast;
  @override
  final String nameMiddle;
  @override
  final String organization;
  @override
  final String phone;

  factory _$ContactRegistrant(
          [void Function(ContactRegistrantBuilder) updates]) =>
      (new ContactRegistrantBuilder()..update(updates)).build();

  _$ContactRegistrant._(
      {this.addressMailing,
      this.email,
      this.fax,
      this.jobTitle,
      this.nameFirst,
      this.nameLast,
      this.nameMiddle,
      this.organization,
      this.phone})
      : super._();

  @override
  ContactRegistrant rebuild(void Function(ContactRegistrantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactRegistrantBuilder toBuilder() =>
      new ContactRegistrantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactRegistrant &&
        addressMailing == other.addressMailing &&
        email == other.email &&
        fax == other.fax &&
        jobTitle == other.jobTitle &&
        nameFirst == other.nameFirst &&
        nameLast == other.nameLast &&
        nameMiddle == other.nameMiddle &&
        organization == other.organization &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, addressMailing.hashCode),
                                    email.hashCode),
                                fax.hashCode),
                            jobTitle.hashCode),
                        nameFirst.hashCode),
                    nameLast.hashCode),
                nameMiddle.hashCode),
            organization.hashCode),
        phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactRegistrant')
          ..add('addressMailing', addressMailing)
          ..add('email', email)
          ..add('fax', fax)
          ..add('jobTitle', jobTitle)
          ..add('nameFirst', nameFirst)
          ..add('nameLast', nameLast)
          ..add('nameMiddle', nameMiddle)
          ..add('organization', organization)
          ..add('phone', phone))
        .toString();
  }
}

class ContactRegistrantBuilder
    implements Builder<ContactRegistrant, ContactRegistrantBuilder> {
  _$ContactRegistrant _$v;

  AddressMailingBuilder _addressMailing;
  AddressMailingBuilder get addressMailing =>
      _$this._addressMailing ??= new AddressMailingBuilder();
  set addressMailing(AddressMailingBuilder addressMailing) =>
      _$this._addressMailing = addressMailing;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _fax;
  String get fax => _$this._fax;
  set fax(String fax) => _$this._fax = fax;

  String _jobTitle;
  String get jobTitle => _$this._jobTitle;
  set jobTitle(String jobTitle) => _$this._jobTitle = jobTitle;

  String _nameFirst;
  String get nameFirst => _$this._nameFirst;
  set nameFirst(String nameFirst) => _$this._nameFirst = nameFirst;

  String _nameLast;
  String get nameLast => _$this._nameLast;
  set nameLast(String nameLast) => _$this._nameLast = nameLast;

  String _nameMiddle;
  String get nameMiddle => _$this._nameMiddle;
  set nameMiddle(String nameMiddle) => _$this._nameMiddle = nameMiddle;

  String _organization;
  String get organization => _$this._organization;
  set organization(String organization) => _$this._organization = organization;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  ContactRegistrantBuilder();

  ContactRegistrantBuilder get _$this {
    if (_$v != null) {
      _addressMailing = _$v.addressMailing?.toBuilder();
      _email = _$v.email;
      _fax = _$v.fax;
      _jobTitle = _$v.jobTitle;
      _nameFirst = _$v.nameFirst;
      _nameLast = _$v.nameLast;
      _nameMiddle = _$v.nameMiddle;
      _organization = _$v.organization;
      _phone = _$v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactRegistrant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContactRegistrant;
  }

  @override
  void update(void Function(ContactRegistrantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactRegistrant build() {
    _$ContactRegistrant _$result;
    try {
      _$result = _$v ??
          new _$ContactRegistrant._(
              addressMailing: _addressMailing?.build(),
              email: email,
              fax: fax,
              jobTitle: jobTitle,
              nameFirst: nameFirst,
              nameLast: nameLast,
              nameMiddle: nameMiddle,
              organization: organization,
              phone: phone);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addressMailing';
        _addressMailing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContactRegistrant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ContactTech extends ContactTech {
  @override
  final AddressMailing addressMailing;
  @override
  final String email;
  @override
  final String fax;
  @override
  final String jobTitle;
  @override
  final String nameFirst;
  @override
  final String nameLast;
  @override
  final String nameMiddle;
  @override
  final String organization;
  @override
  final String phone;

  factory _$ContactTech([void Function(ContactTechBuilder) updates]) =>
      (new ContactTechBuilder()..update(updates)).build();

  _$ContactTech._(
      {this.addressMailing,
      this.email,
      this.fax,
      this.jobTitle,
      this.nameFirst,
      this.nameLast,
      this.nameMiddle,
      this.organization,
      this.phone})
      : super._();

  @override
  ContactTech rebuild(void Function(ContactTechBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactTechBuilder toBuilder() => new ContactTechBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactTech &&
        addressMailing == other.addressMailing &&
        email == other.email &&
        fax == other.fax &&
        jobTitle == other.jobTitle &&
        nameFirst == other.nameFirst &&
        nameLast == other.nameLast &&
        nameMiddle == other.nameMiddle &&
        organization == other.organization &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, addressMailing.hashCode),
                                    email.hashCode),
                                fax.hashCode),
                            jobTitle.hashCode),
                        nameFirst.hashCode),
                    nameLast.hashCode),
                nameMiddle.hashCode),
            organization.hashCode),
        phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactTech')
          ..add('addressMailing', addressMailing)
          ..add('email', email)
          ..add('fax', fax)
          ..add('jobTitle', jobTitle)
          ..add('nameFirst', nameFirst)
          ..add('nameLast', nameLast)
          ..add('nameMiddle', nameMiddle)
          ..add('organization', organization)
          ..add('phone', phone))
        .toString();
  }
}

class ContactTechBuilder implements Builder<ContactTech, ContactTechBuilder> {
  _$ContactTech _$v;

  AddressMailingBuilder _addressMailing;
  AddressMailingBuilder get addressMailing =>
      _$this._addressMailing ??= new AddressMailingBuilder();
  set addressMailing(AddressMailingBuilder addressMailing) =>
      _$this._addressMailing = addressMailing;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _fax;
  String get fax => _$this._fax;
  set fax(String fax) => _$this._fax = fax;

  String _jobTitle;
  String get jobTitle => _$this._jobTitle;
  set jobTitle(String jobTitle) => _$this._jobTitle = jobTitle;

  String _nameFirst;
  String get nameFirst => _$this._nameFirst;
  set nameFirst(String nameFirst) => _$this._nameFirst = nameFirst;

  String _nameLast;
  String get nameLast => _$this._nameLast;
  set nameLast(String nameLast) => _$this._nameLast = nameLast;

  String _nameMiddle;
  String get nameMiddle => _$this._nameMiddle;
  set nameMiddle(String nameMiddle) => _$this._nameMiddle = nameMiddle;

  String _organization;
  String get organization => _$this._organization;
  set organization(String organization) => _$this._organization = organization;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  ContactTechBuilder();

  ContactTechBuilder get _$this {
    if (_$v != null) {
      _addressMailing = _$v.addressMailing?.toBuilder();
      _email = _$v.email;
      _fax = _$v.fax;
      _jobTitle = _$v.jobTitle;
      _nameFirst = _$v.nameFirst;
      _nameLast = _$v.nameLast;
      _nameMiddle = _$v.nameMiddle;
      _organization = _$v.organization;
      _phone = _$v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactTech other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContactTech;
  }

  @override
  void update(void Function(ContactTechBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactTech build() {
    _$ContactTech _$result;
    try {
      _$result = _$v ??
          new _$ContactTech._(
              addressMailing: _addressMailing?.build(),
              email: email,
              fax: fax,
              jobTitle: jobTitle,
              nameFirst: nameFirst,
              nameLast: nameLast,
              nameMiddle: nameMiddle,
              organization: organization,
              phone: phone);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addressMailing';
        _addressMailing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContactTech', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddressMailing extends AddressMailing {
  @override
  final String address1;
  @override
  final String address2;
  @override
  final String city;
  @override
  final String country;
  @override
  final String postalCode;
  @override
  final String state;

  factory _$AddressMailing([void Function(AddressMailingBuilder) updates]) =>
      (new AddressMailingBuilder()..update(updates)).build();

  _$AddressMailing._(
      {this.address1,
      this.address2,
      this.city,
      this.country,
      this.postalCode,
      this.state})
      : super._();

  @override
  AddressMailing rebuild(void Function(AddressMailingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressMailingBuilder toBuilder() =>
      new AddressMailingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressMailing &&
        address1 == other.address1 &&
        address2 == other.address2 &&
        city == other.city &&
        country == other.country &&
        postalCode == other.postalCode &&
        state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, address1.hashCode), address2.hashCode),
                    city.hashCode),
                country.hashCode),
            postalCode.hashCode),
        state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddressMailing')
          ..add('address1', address1)
          ..add('address2', address2)
          ..add('city', city)
          ..add('country', country)
          ..add('postalCode', postalCode)
          ..add('state', state))
        .toString();
  }
}

class AddressMailingBuilder
    implements Builder<AddressMailing, AddressMailingBuilder> {
  _$AddressMailing _$v;

  String _address1;
  String get address1 => _$this._address1;
  set address1(String address1) => _$this._address1 = address1;

  String _address2;
  String get address2 => _$this._address2;
  set address2(String address2) => _$this._address2 = address2;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _postalCode;
  String get postalCode => _$this._postalCode;
  set postalCode(String postalCode) => _$this._postalCode = postalCode;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  AddressMailingBuilder();

  AddressMailingBuilder get _$this {
    if (_$v != null) {
      _address1 = _$v.address1;
      _address2 = _$v.address2;
      _city = _$v.city;
      _country = _$v.country;
      _postalCode = _$v.postalCode;
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressMailing other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddressMailing;
  }

  @override
  void update(void Function(AddressMailingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddressMailing build() {
    final _$result = _$v ??
        new _$AddressMailing._(
            address1: address1,
            address2: address2,
            city: city,
            country: country,
            postalCode: postalCode,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
