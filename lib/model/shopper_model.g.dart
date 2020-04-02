// GENERATED CODE - DO NOT MODIFY BY HAND

part of shopper;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Shopper> _$shopperSerializer = new _$ShopperSerializer();

class _$ShopperSerializer implements StructuredSerializer<Shopper> {
  @override
  final Iterable<Type> types = const [Shopper, _$Shopper];
  @override
  final String wireName = 'Shopper';

  @override
  Iterable<Object> serialize(Serializers serializers, Shopper object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.shopperId != null) {
      result
        ..add('shopperId')
        ..add(serializers.serialize(object.shopperId,
            specifiedType: const FullType(String)));
    }
    if (object.marketId != null) {
      result
        ..add('marketId')
        ..add(serializers.serialize(object.marketId,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
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
    return result;
  }

  @override
  Shopper deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShopperBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'shopperId':
          result.shopperId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'marketId':
          result.marketId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$Shopper extends Shopper {
  @override
  final String shopperId;
  @override
  final String marketId;
  @override
  final String email;
  @override
  final String nameFirst;
  @override
  final String nameLast;

  factory _$Shopper([void Function(ShopperBuilder) updates]) =>
      (new ShopperBuilder()..update(updates)).build();

  _$Shopper._(
      {this.shopperId,
      this.marketId,
      this.email,
      this.nameFirst,
      this.nameLast})
      : super._();

  @override
  Shopper rebuild(void Function(ShopperBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShopperBuilder toBuilder() => new ShopperBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Shopper &&
        shopperId == other.shopperId &&
        marketId == other.marketId &&
        email == other.email &&
        nameFirst == other.nameFirst &&
        nameLast == other.nameLast;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, shopperId.hashCode), marketId.hashCode),
                email.hashCode),
            nameFirst.hashCode),
        nameLast.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Shopper')
          ..add('shopperId', shopperId)
          ..add('marketId', marketId)
          ..add('email', email)
          ..add('nameFirst', nameFirst)
          ..add('nameLast', nameLast))
        .toString();
  }
}

class ShopperBuilder implements Builder<Shopper, ShopperBuilder> {
  _$Shopper _$v;

  String _shopperId;
  String get shopperId => _$this._shopperId;
  set shopperId(String shopperId) => _$this._shopperId = shopperId;

  String _marketId;
  String get marketId => _$this._marketId;
  set marketId(String marketId) => _$this._marketId = marketId;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _nameFirst;
  String get nameFirst => _$this._nameFirst;
  set nameFirst(String nameFirst) => _$this._nameFirst = nameFirst;

  String _nameLast;
  String get nameLast => _$this._nameLast;
  set nameLast(String nameLast) => _$this._nameLast = nameLast;

  ShopperBuilder();

  ShopperBuilder get _$this {
    if (_$v != null) {
      _shopperId = _$v.shopperId;
      _marketId = _$v.marketId;
      _email = _$v.email;
      _nameFirst = _$v.nameFirst;
      _nameLast = _$v.nameLast;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Shopper other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Shopper;
  }

  @override
  void update(void Function(ShopperBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Shopper build() {
    final _$result = _$v ??
        new _$Shopper._(
            shopperId: shopperId,
            marketId: marketId,
            email: email,
            nameFirst: nameFirst,
            nameLast: nameLast);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
