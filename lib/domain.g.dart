// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Domain> _$domainSerializer = new _$DomainSerializer();

class _$DomainSerializer implements StructuredSerializer<Domain> {
  @override
  final Iterable<Type> types = const [Domain, _$Domain];
  @override
  final String wireName = 'Domain';

  @override
  Iterable<Object> serialize(Serializers serializers, Domain object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.domainId != null) {
      result
        ..add('domainId')
        ..add(serializers.serialize(object.domainId,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.tld != null) {
      result
        ..add('tld')
        ..add(serializers.serialize(object.tld,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(double)));
    }
    if (object.estimatedValue != null) {
      result
        ..add('estimatedValue')
        ..add(serializers.serialize(object.estimatedValue,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Domain deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DomainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'domainId':
          result.domainId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tld':
          result.tld = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'estimatedValue':
          result.estimatedValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Domain extends Domain {
  @override
  final String domainId;
  @override
  final String name;
  @override
  final String tld;
  @override
  final double price;
  @override
  final double estimatedValue;

  factory _$Domain([void Function(DomainBuilder) updates]) =>
      (new DomainBuilder()..update(updates)).build();

  _$Domain._(
      {this.domainId, this.name, this.tld, this.price, this.estimatedValue})
      : super._();

  @override
  Domain rebuild(void Function(DomainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainBuilder toBuilder() => new DomainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Domain &&
        domainId == other.domainId &&
        name == other.name &&
        tld == other.tld &&
        price == other.price &&
        estimatedValue == other.estimatedValue;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, domainId.hashCode), name.hashCode), tld.hashCode),
            price.hashCode),
        estimatedValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Domain')
          ..add('domainId', domainId)
          ..add('name', name)
          ..add('tld', tld)
          ..add('price', price)
          ..add('estimatedValue', estimatedValue))
        .toString();
  }
}

class DomainBuilder implements Builder<Domain, DomainBuilder> {
  _$Domain _$v;

  String _domainId;
  String get domainId => _$this._domainId;
  set domainId(String domainId) => _$this._domainId = domainId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _tld;
  String get tld => _$this._tld;
  set tld(String tld) => _$this._tld = tld;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  double _estimatedValue;
  double get estimatedValue => _$this._estimatedValue;
  set estimatedValue(double estimatedValue) =>
      _$this._estimatedValue = estimatedValue;

  DomainBuilder();

  DomainBuilder get _$this {
    if (_$v != null) {
      _domainId = _$v.domainId;
      _name = _$v.name;
      _tld = _$v.tld;
      _price = _$v.price;
      _estimatedValue = _$v.estimatedValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Domain other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Domain;
  }

  @override
  void update(void Function(DomainBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Domain build() {
    final _$result = _$v ??
        new _$Domain._(
            domainId: domainId,
            name: name,
            tld: tld,
            price: price,
            estimatedValue: estimatedValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
