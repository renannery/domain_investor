// GENERATED CODE - DO NOT MODIFY BY HAND

part of recommended_domain;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecommendedDomain> _$recommendedDomainSerializer =
    new _$RecommendedDomainSerializer();

class _$RecommendedDomainSerializer
    implements StructuredSerializer<RecommendedDomain> {
  @override
  final Iterable<Type> types = const [RecommendedDomain, _$RecommendedDomain];
  @override
  final String wireName = 'RecommendedDomain';

  @override
  Iterable<Object> serialize(Serializers serializers, RecommendedDomain object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'IsAd',
      serializers.serialize(object.isAd, specifiedType: const FullType(bool)),
      'Index',
      serializers.serialize(object.index, specifiedType: const FullType(int)),
      'Fqdn',
      serializers.serialize(object.fqdn, specifiedType: const FullType(String)),
      'Extension',
      serializers.serialize(object.extension,
          specifiedType: const FullType(String)),
      'NameWithoutExtension',
      serializers.serialize(object.nameWithoutExtension,
          specifiedType: const FullType(String)),
      'DomainSource',
      serializers.serialize(object.domainSource,
          specifiedType: const FullType(String)),
      'Inventory',
      serializers.serialize(object.inventory,
          specifiedType: const FullType(String)),
      'TierId',
      serializers.serialize(object.tierId, specifiedType: const FullType(int)),
      'IsPremiumTier',
      serializers.serialize(object.isPremiumTier,
          specifiedType: const FullType(bool)),
      'PhaseId',
      serializers.serialize(object.phaseId, specifiedType: const FullType(int)),
      'PhaseCode',
      serializers.serialize(object.phaseCode,
          specifiedType: const FullType(String)),
      'Price',
      serializers.serialize(object.price, specifiedType: const FullType(int)),
      'PriceDisplay',
      serializers.serialize(object.priceDisplay,
          specifiedType: const FullType(String)),
      'UsdPrice',
      serializers.serialize(object.usdPrice,
          specifiedType: const FullType(int)),
      'ProductId',
      serializers.serialize(object.productId,
          specifiedType: const FullType(int)),
      'RenewalProductId',
      serializers.serialize(object.renewalProductId,
          specifiedType: const FullType(int)),
      'VendorId',
      serializers.serialize(object.vendorId,
          specifiedType: const FullType(int)),
      'IsIdn',
      serializers.serialize(object.isIdn, specifiedType: const FullType(bool)),
      'DomainGUID',
      serializers.serialize(object.domainGUID,
          specifiedType: const FullType(String)),
      'AddToCartCallback',
      serializers.serialize(object.addToCartCallback,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RecommendedDomain deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecommendedDomainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'IsAd':
          result.isAd = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Fqdn':
          result.fqdn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Extension':
          result.extension = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'NameWithoutExtension':
          result.nameWithoutExtension = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'DomainSource':
          result.domainSource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Inventory':
          result.inventory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TierId':
          result.tierId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'IsPremiumTier':
          result.isPremiumTier = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'PhaseId':
          result.phaseId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'PhaseCode':
          result.phaseCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'PriceDisplay':
          result.priceDisplay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'UsdPrice':
          result.usdPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ProductId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'RenewalProductId':
          result.renewalProductId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'VendorId':
          result.vendorId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'IsIdn':
          result.isIdn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'DomainGUID':
          result.domainGUID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'AddToCartCallback':
          result.addToCartCallback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RecommendedDomain extends RecommendedDomain {
  @override
  final bool isAd;
  @override
  final int index;
  @override
  final String fqdn;
  @override
  final String extension;
  @override
  final String nameWithoutExtension;
  @override
  final String domainSource;
  @override
  final String inventory;
  @override
  final int tierId;
  @override
  final bool isPremiumTier;
  @override
  final int phaseId;
  @override
  final String phaseCode;
  @override
  final int price;
  @override
  final String priceDisplay;
  @override
  final int usdPrice;
  @override
  final int productId;
  @override
  final int renewalProductId;
  @override
  final int vendorId;
  @override
  final bool isIdn;
  @override
  final String domainGUID;
  @override
  final String addToCartCallback;

  factory _$RecommendedDomain(
          [void Function(RecommendedDomainBuilder) updates]) =>
      (new RecommendedDomainBuilder()..update(updates)).build();

  _$RecommendedDomain._(
      {this.isAd,
      this.index,
      this.fqdn,
      this.extension,
      this.nameWithoutExtension,
      this.domainSource,
      this.inventory,
      this.tierId,
      this.isPremiumTier,
      this.phaseId,
      this.phaseCode,
      this.price,
      this.priceDisplay,
      this.usdPrice,
      this.productId,
      this.renewalProductId,
      this.vendorId,
      this.isIdn,
      this.domainGUID,
      this.addToCartCallback})
      : super._() {
    if (isAd == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'isAd');
    }
    if (index == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'index');
    }
    if (fqdn == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'fqdn');
    }
    if (extension == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'extension');
    }
    if (nameWithoutExtension == null) {
      throw new BuiltValueNullFieldError(
          'RecommendedDomain', 'nameWithoutExtension');
    }
    if (domainSource == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'domainSource');
    }
    if (inventory == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'inventory');
    }
    if (tierId == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'tierId');
    }
    if (isPremiumTier == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'isPremiumTier');
    }
    if (phaseId == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'phaseId');
    }
    if (phaseCode == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'phaseCode');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'price');
    }
    if (priceDisplay == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'priceDisplay');
    }
    if (usdPrice == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'usdPrice');
    }
    if (productId == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'productId');
    }
    if (renewalProductId == null) {
      throw new BuiltValueNullFieldError(
          'RecommendedDomain', 'renewalProductId');
    }
    if (vendorId == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'vendorId');
    }
    if (isIdn == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'isIdn');
    }
    if (domainGUID == null) {
      throw new BuiltValueNullFieldError('RecommendedDomain', 'domainGUID');
    }
    if (addToCartCallback == null) {
      throw new BuiltValueNullFieldError(
          'RecommendedDomain', 'addToCartCallback');
    }
  }

  @override
  RecommendedDomain rebuild(void Function(RecommendedDomainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendedDomainBuilder toBuilder() =>
      new RecommendedDomainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendedDomain &&
        isAd == other.isAd &&
        index == other.index &&
        fqdn == other.fqdn &&
        extension == other.extension &&
        nameWithoutExtension == other.nameWithoutExtension &&
        domainSource == other.domainSource &&
        inventory == other.inventory &&
        tierId == other.tierId &&
        isPremiumTier == other.isPremiumTier &&
        phaseId == other.phaseId &&
        phaseCode == other.phaseCode &&
        price == other.price &&
        priceDisplay == other.priceDisplay &&
        usdPrice == other.usdPrice &&
        productId == other.productId &&
        renewalProductId == other.renewalProductId &&
        vendorId == other.vendorId &&
        isIdn == other.isIdn &&
        domainGUID == other.domainGUID &&
        addToCartCallback == other.addToCartCallback;
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
                                                                            $jc($jc(0, isAd.hashCode),
                                                                                index.hashCode),
                                                                            fqdn.hashCode),
                                                                        extension.hashCode),
                                                                    nameWithoutExtension.hashCode),
                                                                domainSource.hashCode),
                                                            inventory.hashCode),
                                                        tierId.hashCode),
                                                    isPremiumTier.hashCode),
                                                phaseId.hashCode),
                                            phaseCode.hashCode),
                                        price.hashCode),
                                    priceDisplay.hashCode),
                                usdPrice.hashCode),
                            productId.hashCode),
                        renewalProductId.hashCode),
                    vendorId.hashCode),
                isIdn.hashCode),
            domainGUID.hashCode),
        addToCartCallback.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecommendedDomain')
          ..add('isAd', isAd)
          ..add('index', index)
          ..add('fqdn', fqdn)
          ..add('extension', extension)
          ..add('nameWithoutExtension', nameWithoutExtension)
          ..add('domainSource', domainSource)
          ..add('inventory', inventory)
          ..add('tierId', tierId)
          ..add('isPremiumTier', isPremiumTier)
          ..add('phaseId', phaseId)
          ..add('phaseCode', phaseCode)
          ..add('price', price)
          ..add('priceDisplay', priceDisplay)
          ..add('usdPrice', usdPrice)
          ..add('productId', productId)
          ..add('renewalProductId', renewalProductId)
          ..add('vendorId', vendorId)
          ..add('isIdn', isIdn)
          ..add('domainGUID', domainGUID)
          ..add('addToCartCallback', addToCartCallback))
        .toString();
  }
}

class RecommendedDomainBuilder
    implements Builder<RecommendedDomain, RecommendedDomainBuilder> {
  _$RecommendedDomain _$v;

  bool _isAd;
  bool get isAd => _$this._isAd;
  set isAd(bool isAd) => _$this._isAd = isAd;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  String _fqdn;
  String get fqdn => _$this._fqdn;
  set fqdn(String fqdn) => _$this._fqdn = fqdn;

  String _extension;
  String get extension => _$this._extension;
  set extension(String extension) => _$this._extension = extension;

  String _nameWithoutExtension;
  String get nameWithoutExtension => _$this._nameWithoutExtension;
  set nameWithoutExtension(String nameWithoutExtension) =>
      _$this._nameWithoutExtension = nameWithoutExtension;

  String _domainSource;
  String get domainSource => _$this._domainSource;
  set domainSource(String domainSource) => _$this._domainSource = domainSource;

  String _inventory;
  String get inventory => _$this._inventory;
  set inventory(String inventory) => _$this._inventory = inventory;

  int _tierId;
  int get tierId => _$this._tierId;
  set tierId(int tierId) => _$this._tierId = tierId;

  bool _isPremiumTier;
  bool get isPremiumTier => _$this._isPremiumTier;
  set isPremiumTier(bool isPremiumTier) =>
      _$this._isPremiumTier = isPremiumTier;

  int _phaseId;
  int get phaseId => _$this._phaseId;
  set phaseId(int phaseId) => _$this._phaseId = phaseId;

  String _phaseCode;
  String get phaseCode => _$this._phaseCode;
  set phaseCode(String phaseCode) => _$this._phaseCode = phaseCode;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  String _priceDisplay;
  String get priceDisplay => _$this._priceDisplay;
  set priceDisplay(String priceDisplay) => _$this._priceDisplay = priceDisplay;

  int _usdPrice;
  int get usdPrice => _$this._usdPrice;
  set usdPrice(int usdPrice) => _$this._usdPrice = usdPrice;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  int _renewalProductId;
  int get renewalProductId => _$this._renewalProductId;
  set renewalProductId(int renewalProductId) =>
      _$this._renewalProductId = renewalProductId;

  int _vendorId;
  int get vendorId => _$this._vendorId;
  set vendorId(int vendorId) => _$this._vendorId = vendorId;

  bool _isIdn;
  bool get isIdn => _$this._isIdn;
  set isIdn(bool isIdn) => _$this._isIdn = isIdn;

  String _domainGUID;
  String get domainGUID => _$this._domainGUID;
  set domainGUID(String domainGUID) => _$this._domainGUID = domainGUID;

  String _addToCartCallback;
  String get addToCartCallback => _$this._addToCartCallback;
  set addToCartCallback(String addToCartCallback) =>
      _$this._addToCartCallback = addToCartCallback;

  RecommendedDomainBuilder();

  RecommendedDomainBuilder get _$this {
    if (_$v != null) {
      _isAd = _$v.isAd;
      _index = _$v.index;
      _fqdn = _$v.fqdn;
      _extension = _$v.extension;
      _nameWithoutExtension = _$v.nameWithoutExtension;
      _domainSource = _$v.domainSource;
      _inventory = _$v.inventory;
      _tierId = _$v.tierId;
      _isPremiumTier = _$v.isPremiumTier;
      _phaseId = _$v.phaseId;
      _phaseCode = _$v.phaseCode;
      _price = _$v.price;
      _priceDisplay = _$v.priceDisplay;
      _usdPrice = _$v.usdPrice;
      _productId = _$v.productId;
      _renewalProductId = _$v.renewalProductId;
      _vendorId = _$v.vendorId;
      _isIdn = _$v.isIdn;
      _domainGUID = _$v.domainGUID;
      _addToCartCallback = _$v.addToCartCallback;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendedDomain other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RecommendedDomain;
  }

  @override
  void update(void Function(RecommendedDomainBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RecommendedDomain build() {
    final _$result = _$v ??
        new _$RecommendedDomain._(
            isAd: isAd,
            index: index,
            fqdn: fqdn,
            extension: extension,
            nameWithoutExtension: nameWithoutExtension,
            domainSource: domainSource,
            inventory: inventory,
            tierId: tierId,
            isPremiumTier: isPremiumTier,
            phaseId: phaseId,
            phaseCode: phaseCode,
            price: price,
            priceDisplay: priceDisplay,
            usdPrice: usdPrice,
            productId: productId,
            renewalProductId: renewalProductId,
            vendorId: vendorId,
            isIdn: isIdn,
            domainGUID: domainGUID,
            addToCartCallback: addToCartCallback);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
