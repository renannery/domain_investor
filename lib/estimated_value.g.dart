// GENERATED CODE - DO NOT MODIFY BY HAND

part of estimated_value;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EstimatedValue> _$estimatedValueSerializer =
    new _$EstimatedValueSerializer();

class _$EstimatedValueSerializer
    implements StructuredSerializer<EstimatedValue> {
  @override
  final Iterable<Type> types = const [EstimatedValue, _$EstimatedValue];
  @override
  final String wireName = 'EstimatedValue';

  @override
  Iterable<Object> serialize(Serializers serializers, EstimatedValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'domain',
      serializers.serialize(object.domain,
          specifiedType: const FullType(String)),
      'govalueLimits',
      serializers.serialize(object.govalueLimits,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'govalue',
      serializers.serialize(object.govalue, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  EstimatedValue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EstimatedValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'domain':
          result.domain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'govalueLimits':
          result.govalueLimits.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'govalue':
          result.govalue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$EstimatedValue extends EstimatedValue {
  @override
  final String status;
  @override
  final String domain;
  @override
  final BuiltList<int> govalueLimits;
  @override
  final int govalue;

  factory _$EstimatedValue([void Function(EstimatedValueBuilder) updates]) =>
      (new EstimatedValueBuilder()..update(updates)).build();

  _$EstimatedValue._(
      {this.status, this.domain, this.govalueLimits, this.govalue})
      : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('EstimatedValue', 'status');
    }
    if (domain == null) {
      throw new BuiltValueNullFieldError('EstimatedValue', 'domain');
    }
    if (govalueLimits == null) {
      throw new BuiltValueNullFieldError('EstimatedValue', 'govalueLimits');
    }
    if (govalue == null) {
      throw new BuiltValueNullFieldError('EstimatedValue', 'govalue');
    }
  }

  @override
  EstimatedValue rebuild(void Function(EstimatedValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstimatedValueBuilder toBuilder() =>
      new EstimatedValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstimatedValue &&
        status == other.status &&
        domain == other.domain &&
        govalueLimits == other.govalueLimits &&
        govalue == other.govalue;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, status.hashCode), domain.hashCode),
            govalueLimits.hashCode),
        govalue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EstimatedValue')
          ..add('status', status)
          ..add('domain', domain)
          ..add('govalueLimits', govalueLimits)
          ..add('govalue', govalue))
        .toString();
  }
}

class EstimatedValueBuilder
    implements Builder<EstimatedValue, EstimatedValueBuilder> {
  _$EstimatedValue _$v;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _domain;
  String get domain => _$this._domain;
  set domain(String domain) => _$this._domain = domain;

  ListBuilder<int> _govalueLimits;
  ListBuilder<int> get govalueLimits =>
      _$this._govalueLimits ??= new ListBuilder<int>();
  set govalueLimits(ListBuilder<int> govalueLimits) =>
      _$this._govalueLimits = govalueLimits;

  int _govalue;
  int get govalue => _$this._govalue;
  set govalue(int govalue) => _$this._govalue = govalue;

  EstimatedValueBuilder();

  EstimatedValueBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _domain = _$v.domain;
      _govalueLimits = _$v.govalueLimits?.toBuilder();
      _govalue = _$v.govalue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstimatedValue other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EstimatedValue;
  }

  @override
  void update(void Function(EstimatedValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EstimatedValue build() {
    _$EstimatedValue _$result;
    try {
      _$result = _$v ??
          new _$EstimatedValue._(
              status: status,
              domain: domain,
              govalueLimits: govalueLimits.build(),
              govalue: govalue);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'govalueLimits';
        govalueLimits.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EstimatedValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
