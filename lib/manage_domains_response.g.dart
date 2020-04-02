// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_domains_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ManageDomainsResponse> _$manageDomainsResponseSerializer =
    new _$ManageDomainsResponseSerializer();

class _$ManageDomainsResponseSerializer
    implements StructuredSerializer<ManageDomainsResponse> {
  @override
  final Iterable<Type> types = const [
    ManageDomainsResponse,
    _$ManageDomainsResponse
  ];
  @override
  final String wireName = 'ManageDomainsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ManageDomainsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'firstDomainName',
      serializers.serialize(object.firstDomainName,
          specifiedType: const FullType(String)),
      'lastDomainName',
      serializers.serialize(object.lastDomainName,
          specifiedType: const FullType(String)),
      'tlds',
      serializers.serialize(object.tlds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'domains',
      serializers.serialize(object.domains,
          specifiedType: const FullType(
              BuiltList, const [const FullType(RegisteredDomain)])),
      'totalInSearch',
      serializers.serialize(object.totalInSearch,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ManageDomainsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ManageDomainsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'firstDomainName':
          result.firstDomainName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastDomainName':
          result.lastDomainName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tlds':
          result.tlds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'domains':
          result.domains.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RegisteredDomain)]))
              as BuiltList<Object>);
          break;
        case 'totalInSearch':
          result.totalInSearch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ManageDomainsResponse extends ManageDomainsResponse {
  @override
  final String firstDomainName;
  @override
  final String lastDomainName;
  @override
  final BuiltList<String> tlds;
  @override
  final BuiltList<RegisteredDomain> domains;
  @override
  final int totalInSearch;

  factory _$ManageDomainsResponse(
          [void Function(ManageDomainsResponseBuilder) updates]) =>
      (new ManageDomainsResponseBuilder()..update(updates)).build();

  _$ManageDomainsResponse._(
      {this.firstDomainName,
      this.lastDomainName,
      this.tlds,
      this.domains,
      this.totalInSearch})
      : super._() {
    if (firstDomainName == null) {
      throw new BuiltValueNullFieldError(
          'ManageDomainsResponse', 'firstDomainName');
    }
    if (lastDomainName == null) {
      throw new BuiltValueNullFieldError(
          'ManageDomainsResponse', 'lastDomainName');
    }
    if (tlds == null) {
      throw new BuiltValueNullFieldError('ManageDomainsResponse', 'tlds');
    }
    if (domains == null) {
      throw new BuiltValueNullFieldError('ManageDomainsResponse', 'domains');
    }
    if (totalInSearch == null) {
      throw new BuiltValueNullFieldError(
          'ManageDomainsResponse', 'totalInSearch');
    }
  }

  @override
  ManageDomainsResponse rebuild(
          void Function(ManageDomainsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ManageDomainsResponseBuilder toBuilder() =>
      new ManageDomainsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManageDomainsResponse &&
        firstDomainName == other.firstDomainName &&
        lastDomainName == other.lastDomainName &&
        tlds == other.tlds &&
        domains == other.domains &&
        totalInSearch == other.totalInSearch;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, firstDomainName.hashCode), lastDomainName.hashCode),
                tlds.hashCode),
            domains.hashCode),
        totalInSearch.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ManageDomainsResponse')
          ..add('firstDomainName', firstDomainName)
          ..add('lastDomainName', lastDomainName)
          ..add('tlds', tlds)
          ..add('domains', domains)
          ..add('totalInSearch', totalInSearch))
        .toString();
  }
}

class ManageDomainsResponseBuilder
    implements Builder<ManageDomainsResponse, ManageDomainsResponseBuilder> {
  _$ManageDomainsResponse _$v;

  String _firstDomainName;
  String get firstDomainName => _$this._firstDomainName;
  set firstDomainName(String firstDomainName) =>
      _$this._firstDomainName = firstDomainName;

  String _lastDomainName;
  String get lastDomainName => _$this._lastDomainName;
  set lastDomainName(String lastDomainName) =>
      _$this._lastDomainName = lastDomainName;

  ListBuilder<String> _tlds;
  ListBuilder<String> get tlds => _$this._tlds ??= new ListBuilder<String>();
  set tlds(ListBuilder<String> tlds) => _$this._tlds = tlds;

  ListBuilder<RegisteredDomain> _domains;
  ListBuilder<RegisteredDomain> get domains =>
      _$this._domains ??= new ListBuilder<RegisteredDomain>();
  set domains(ListBuilder<RegisteredDomain> domains) =>
      _$this._domains = domains;

  int _totalInSearch;
  int get totalInSearch => _$this._totalInSearch;
  set totalInSearch(int totalInSearch) => _$this._totalInSearch = totalInSearch;

  ManageDomainsResponseBuilder();

  ManageDomainsResponseBuilder get _$this {
    if (_$v != null) {
      _firstDomainName = _$v.firstDomainName;
      _lastDomainName = _$v.lastDomainName;
      _tlds = _$v.tlds?.toBuilder();
      _domains = _$v.domains?.toBuilder();
      _totalInSearch = _$v.totalInSearch;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManageDomainsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ManageDomainsResponse;
  }

  @override
  void update(void Function(ManageDomainsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ManageDomainsResponse build() {
    _$ManageDomainsResponse _$result;
    try {
      _$result = _$v ??
          new _$ManageDomainsResponse._(
              firstDomainName: firstDomainName,
              lastDomainName: lastDomainName,
              tlds: tlds.build(),
              domains: domains.build(),
              totalInSearch: totalInSearch);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tlds';
        tlds.build();
        _$failedField = 'domains';
        domains.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ManageDomainsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
