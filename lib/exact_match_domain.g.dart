// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exact_match_domain.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExactMatchDomain> _$exactMatchDomainSerializer =
    new _$ExactMatchDomainSerializer();

class _$ExactMatchDomainSerializer
    implements StructuredSerializer<ExactMatchDomain> {
  @override
  final Iterable<Type> types = const [ExactMatchDomain, _$ExactMatchDomain];
  @override
  final String wireName = 'ExactMatchDomain';

  @override
  Iterable<Object> serialize(Serializers serializers, ExactMatchDomain object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.availabilityStatus != null) {
      result
        ..add('AvailabilityStatus')
        ..add(serializers.serialize(object.availabilityStatus,
            specifiedType: const FullType(num)));
    }
    if (object.syntaxStatus != null) {
      result
        ..add('SyntaxStatus')
        ..add(serializers.serialize(object.syntaxStatus,
            specifiedType: const FullType(num)));
    }
    if (object.syntaxMessage != null) {
      result
        ..add('SyntaxMessage')
        ..add(serializers.serialize(object.syntaxMessage,
            specifiedType: const FullType(String)));
    }
    if (object.isBackorderable != null) {
      result
        ..add('IsBackorderable')
        ..add(serializers.serialize(object.isBackorderable,
            specifiedType: const FullType(bool)));
    }
    if (object.isDbsAvailable != null) {
      result
        ..add('IsDbsAvailable')
        ..add(serializers.serialize(object.isDbsAvailable,
            specifiedType: const FullType(bool)));
    }
    if (object.isPurchasable != null) {
      result
        ..add('IsPurchasable')
        ..add(serializers.serialize(object.isPurchasable,
            specifiedType: const FullType(bool)));
    }
    if (object.auctionId != null) {
      result
        ..add('AuctionId')
        ..add(serializers.serialize(object.auctionId,
            specifiedType: const FullType(num)));
    }
    if (object.auctionTypeId != null) {
      result
        ..add('AuctionTypeId')
        ..add(serializers.serialize(object.auctionTypeId,
            specifiedType: const FullType(num)));
    }
    if (object.isAvailable != null) {
      result
        ..add('IsAvailable')
        ..add(serializers.serialize(object.isAvailable,
            specifiedType: const FullType(bool)));
    }
    if (object.isValid != null) {
      result
        ..add('IsValid')
        ..add(serializers.serialize(object.isValid,
            specifiedType: const FullType(bool)));
    }
    if (object.isNxd != null) {
      result
        ..add('IsNxd')
        ..add(serializers.serialize(object.isNxd,
            specifiedType: const FullType(bool)));
    }
    if (object.index != null) {
      result
        ..add('Index')
        ..add(serializers.serialize(object.index,
            specifiedType: const FullType(num)));
    }
    if (object.fqdn != null) {
      result
        ..add('Fqdn')
        ..add(serializers.serialize(object.fqdn,
            specifiedType: const FullType(String)));
    }
    if (object.extension != null) {
      result
        ..add('Extension')
        ..add(serializers.serialize(object.extension,
            specifiedType: const FullType(String)));
    }
    if (object.nameWithoutExtension != null) {
      result
        ..add('NameWithoutExtension')
        ..add(serializers.serialize(object.nameWithoutExtension,
            specifiedType: const FullType(String)));
    }
    if (object.domainScore != null) {
      result
        ..add('DomainScore')
        ..add(serializers.serialize(object.domainScore,
            specifiedType: const FullType(num)));
    }
    if (object.inventory != null) {
      result
        ..add('Inventory')
        ..add(serializers.serialize(object.inventory,
            specifiedType: const FullType(String)));
    }
    if (object.tierId != null) {
      result
        ..add('TierId')
        ..add(serializers.serialize(object.tierId,
            specifiedType: const FullType(num)));
    }
    if (object.isPremiumTier != null) {
      result
        ..add('IsPremiumTier')
        ..add(serializers.serialize(object.isPremiumTier,
            specifiedType: const FullType(bool)));
    }
    if (object.phaseId != null) {
      result
        ..add('PhaseId')
        ..add(serializers.serialize(object.phaseId,
            specifiedType: const FullType(num)));
    }
    if (object.phaseCode != null) {
      result
        ..add('PhaseCode')
        ..add(serializers.serialize(object.phaseCode,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('Price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(num)));
    }
    if (object.priceDisplay != null) {
      result
        ..add('PriceDisplay')
        ..add(serializers.serialize(object.priceDisplay,
            specifiedType: const FullType(String)));
    }
    if (object.priceDisplayInMicroUnits != null) {
      result
        ..add('PriceDisplayInMicroUnits')
        ..add(serializers.serialize(object.priceDisplayInMicroUnits,
            specifiedType: const FullType(num)));
    }
    if (object.usdPrice != null) {
      result
        ..add('UsdPrice')
        ..add(serializers.serialize(object.usdPrice,
            specifiedType: const FullType(num)));
    }
    if (object.productId != null) {
      result
        ..add('ProductId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(num)));
    }
    if (object.renewalProductId != null) {
      result
        ..add('RenewalProductId')
        ..add(serializers.serialize(object.renewalProductId,
            specifiedType: const FullType(num)));
    }
    if (object.vendorId != null) {
      result
        ..add('VendorId')
        ..add(serializers.serialize(object.vendorId,
            specifiedType: const FullType(num)));
    }
    if (object.commissionPercent != null) {
      result
        ..add('CommissionPercent')
        ..add(serializers.serialize(object.commissionPercent,
            specifiedType: const FullType(num)));
    }
    if (object.isIdn != null) {
      result
        ..add('IsIdn')
        ..add(serializers.serialize(object.isIdn,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ExactMatchDomain deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExactMatchDomainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'AvailabilityStatus':
          result.availabilityStatus = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'SyntaxStatus':
          result.syntaxStatus = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'SyntaxMessage':
          result.syntaxMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'IsBackorderable':
          result.isBackorderable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'IsDbsAvailable':
          result.isDbsAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'IsPurchasable':
          result.isPurchasable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'AuctionId':
          result.auctionId = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'AuctionTypeId':
          result.auctionTypeId = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'IsAvailable':
          result.isAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'IsValid':
          result.isValid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'IsNxd':
          result.isNxd = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
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
        case 'DomainScore':
          result.domainScore = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'Inventory':
          result.inventory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TierId':
          result.tierId = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'IsPremiumTier':
          result.isPremiumTier = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'PhaseId':
          result.phaseId = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'PhaseCode':
          result.phaseCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'PriceDisplay':
          result.priceDisplay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PriceDisplayInMicroUnits':
          result.priceDisplayInMicroUnits = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'UsdPrice':
          result.usdPrice = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'ProductId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'RenewalProductId':
          result.renewalProductId = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'VendorId':
          result.vendorId = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'CommissionPercent':
          result.commissionPercent = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'IsIdn':
          result.isIdn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ExactMatchDomain extends ExactMatchDomain {
  @override
  final num availabilityStatus;
  @override
  final num syntaxStatus;
  @override
  final String syntaxMessage;
  @override
  final bool isBackorderable;
  @override
  final bool isDbsAvailable;
  @override
  final bool isPurchasable;
  @override
  final num auctionId;
  @override
  final num auctionTypeId;
  @override
  final bool isAvailable;
  @override
  final bool isValid;
  @override
  final bool isNxd;
  @override
  final num index;
  @override
  final String fqdn;
  @override
  final String extension;
  @override
  final String nameWithoutExtension;
  @override
  final num domainScore;
  @override
  final String inventory;
  @override
  final num tierId;
  @override
  final bool isPremiumTier;
  @override
  final num phaseId;
  @override
  final String phaseCode;
  @override
  final num price;
  @override
  final String priceDisplay;
  @override
  final num priceDisplayInMicroUnits;
  @override
  final num usdPrice;
  @override
  final num productId;
  @override
  final num renewalProductId;
  @override
  final num vendorId;
  @override
  final num commissionPercent;
  @override
  final bool isIdn;

  factory _$ExactMatchDomain(
          [void Function(ExactMatchDomainBuilder) updates]) =>
      (new ExactMatchDomainBuilder()..update(updates)).build();

  _$ExactMatchDomain._(
      {this.availabilityStatus,
      this.syntaxStatus,
      this.syntaxMessage,
      this.isBackorderable,
      this.isDbsAvailable,
      this.isPurchasable,
      this.auctionId,
      this.auctionTypeId,
      this.isAvailable,
      this.isValid,
      this.isNxd,
      this.index,
      this.fqdn,
      this.extension,
      this.nameWithoutExtension,
      this.domainScore,
      this.inventory,
      this.tierId,
      this.isPremiumTier,
      this.phaseId,
      this.phaseCode,
      this.price,
      this.priceDisplay,
      this.priceDisplayInMicroUnits,
      this.usdPrice,
      this.productId,
      this.renewalProductId,
      this.vendorId,
      this.commissionPercent,
      this.isIdn})
      : super._();

  @override
  ExactMatchDomain rebuild(void Function(ExactMatchDomainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExactMatchDomainBuilder toBuilder() =>
      new ExactMatchDomainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExactMatchDomain &&
        availabilityStatus == other.availabilityStatus &&
        syntaxStatus == other.syntaxStatus &&
        syntaxMessage == other.syntaxMessage &&
        isBackorderable == other.isBackorderable &&
        isDbsAvailable == other.isDbsAvailable &&
        isPurchasable == other.isPurchasable &&
        auctionId == other.auctionId &&
        auctionTypeId == other.auctionTypeId &&
        isAvailable == other.isAvailable &&
        isValid == other.isValid &&
        isNxd == other.isNxd &&
        index == other.index &&
        fqdn == other.fqdn &&
        extension == other.extension &&
        nameWithoutExtension == other.nameWithoutExtension &&
        domainScore == other.domainScore &&
        inventory == other.inventory &&
        tierId == other.tierId &&
        isPremiumTier == other.isPremiumTier &&
        phaseId == other.phaseId &&
        phaseCode == other.phaseCode &&
        price == other.price &&
        priceDisplay == other.priceDisplay &&
        priceDisplayInMicroUnits == other.priceDisplayInMicroUnits &&
        usdPrice == other.usdPrice &&
        productId == other.productId &&
        renewalProductId == other.renewalProductId &&
        vendorId == other.vendorId &&
        commissionPercent == other.commissionPercent &&
        isIdn == other.isIdn;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, availabilityStatus.hashCode), syntaxStatus.hashCode), syntaxMessage.hashCode), isBackorderable.hashCode), isDbsAvailable.hashCode), isPurchasable.hashCode), auctionId.hashCode), auctionTypeId.hashCode), isAvailable.hashCode), isValid.hashCode), isNxd.hashCode),
                                                                                index.hashCode),
                                                                            fqdn.hashCode),
                                                                        extension.hashCode),
                                                                    nameWithoutExtension.hashCode),
                                                                domainScore.hashCode),
                                                            inventory.hashCode),
                                                        tierId.hashCode),
                                                    isPremiumTier.hashCode),
                                                phaseId.hashCode),
                                            phaseCode.hashCode),
                                        price.hashCode),
                                    priceDisplay.hashCode),
                                priceDisplayInMicroUnits.hashCode),
                            usdPrice.hashCode),
                        productId.hashCode),
                    renewalProductId.hashCode),
                vendorId.hashCode),
            commissionPercent.hashCode),
        isIdn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExactMatchDomain')
          ..add('availabilityStatus', availabilityStatus)
          ..add('syntaxStatus', syntaxStatus)
          ..add('syntaxMessage', syntaxMessage)
          ..add('isBackorderable', isBackorderable)
          ..add('isDbsAvailable', isDbsAvailable)
          ..add('isPurchasable', isPurchasable)
          ..add('auctionId', auctionId)
          ..add('auctionTypeId', auctionTypeId)
          ..add('isAvailable', isAvailable)
          ..add('isValid', isValid)
          ..add('isNxd', isNxd)
          ..add('index', index)
          ..add('fqdn', fqdn)
          ..add('extension', extension)
          ..add('nameWithoutExtension', nameWithoutExtension)
          ..add('domainScore', domainScore)
          ..add('inventory', inventory)
          ..add('tierId', tierId)
          ..add('isPremiumTier', isPremiumTier)
          ..add('phaseId', phaseId)
          ..add('phaseCode', phaseCode)
          ..add('price', price)
          ..add('priceDisplay', priceDisplay)
          ..add('priceDisplayInMicroUnits', priceDisplayInMicroUnits)
          ..add('usdPrice', usdPrice)
          ..add('productId', productId)
          ..add('renewalProductId', renewalProductId)
          ..add('vendorId', vendorId)
          ..add('commissionPercent', commissionPercent)
          ..add('isIdn', isIdn))
        .toString();
  }
}

class ExactMatchDomainBuilder
    implements Builder<ExactMatchDomain, ExactMatchDomainBuilder> {
  _$ExactMatchDomain _$v;

  num _availabilityStatus;
  num get availabilityStatus => _$this._availabilityStatus;
  set availabilityStatus(num availabilityStatus) =>
      _$this._availabilityStatus = availabilityStatus;

  num _syntaxStatus;
  num get syntaxStatus => _$this._syntaxStatus;
  set syntaxStatus(num syntaxStatus) => _$this._syntaxStatus = syntaxStatus;

  String _syntaxMessage;
  String get syntaxMessage => _$this._syntaxMessage;
  set syntaxMessage(String syntaxMessage) =>
      _$this._syntaxMessage = syntaxMessage;

  bool _isBackorderable;
  bool get isBackorderable => _$this._isBackorderable;
  set isBackorderable(bool isBackorderable) =>
      _$this._isBackorderable = isBackorderable;

  bool _isDbsAvailable;
  bool get isDbsAvailable => _$this._isDbsAvailable;
  set isDbsAvailable(bool isDbsAvailable) =>
      _$this._isDbsAvailable = isDbsAvailable;

  bool _isPurchasable;
  bool get isPurchasable => _$this._isPurchasable;
  set isPurchasable(bool isPurchasable) =>
      _$this._isPurchasable = isPurchasable;

  num _auctionId;
  num get auctionId => _$this._auctionId;
  set auctionId(num auctionId) => _$this._auctionId = auctionId;

  num _auctionTypeId;
  num get auctionTypeId => _$this._auctionTypeId;
  set auctionTypeId(num auctionTypeId) => _$this._auctionTypeId = auctionTypeId;

  bool _isAvailable;
  bool get isAvailable => _$this._isAvailable;
  set isAvailable(bool isAvailable) => _$this._isAvailable = isAvailable;

  bool _isValid;
  bool get isValid => _$this._isValid;
  set isValid(bool isValid) => _$this._isValid = isValid;

  bool _isNxd;
  bool get isNxd => _$this._isNxd;
  set isNxd(bool isNxd) => _$this._isNxd = isNxd;

  num _index;
  num get index => _$this._index;
  set index(num index) => _$this._index = index;

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

  num _domainScore;
  num get domainScore => _$this._domainScore;
  set domainScore(num domainScore) => _$this._domainScore = domainScore;

  String _inventory;
  String get inventory => _$this._inventory;
  set inventory(String inventory) => _$this._inventory = inventory;

  num _tierId;
  num get tierId => _$this._tierId;
  set tierId(num tierId) => _$this._tierId = tierId;

  bool _isPremiumTier;
  bool get isPremiumTier => _$this._isPremiumTier;
  set isPremiumTier(bool isPremiumTier) =>
      _$this._isPremiumTier = isPremiumTier;

  num _phaseId;
  num get phaseId => _$this._phaseId;
  set phaseId(num phaseId) => _$this._phaseId = phaseId;

  String _phaseCode;
  String get phaseCode => _$this._phaseCode;
  set phaseCode(String phaseCode) => _$this._phaseCode = phaseCode;

  num _price;
  num get price => _$this._price;
  set price(num price) => _$this._price = price;

  String _priceDisplay;
  String get priceDisplay => _$this._priceDisplay;
  set priceDisplay(String priceDisplay) => _$this._priceDisplay = priceDisplay;

  num _priceDisplayInMicroUnits;
  num get priceDisplayInMicroUnits => _$this._priceDisplayInMicroUnits;
  set priceDisplayInMicroUnits(num priceDisplayInMicroUnits) =>
      _$this._priceDisplayInMicroUnits = priceDisplayInMicroUnits;

  num _usdPrice;
  num get usdPrice => _$this._usdPrice;
  set usdPrice(num usdPrice) => _$this._usdPrice = usdPrice;

  num _productId;
  num get productId => _$this._productId;
  set productId(num productId) => _$this._productId = productId;

  num _renewalProductId;
  num get renewalProductId => _$this._renewalProductId;
  set renewalProductId(num renewalProductId) =>
      _$this._renewalProductId = renewalProductId;

  num _vendorId;
  num get vendorId => _$this._vendorId;
  set vendorId(num vendorId) => _$this._vendorId = vendorId;

  num _commissionPercent;
  num get commissionPercent => _$this._commissionPercent;
  set commissionPercent(num commissionPercent) =>
      _$this._commissionPercent = commissionPercent;

  bool _isIdn;
  bool get isIdn => _$this._isIdn;
  set isIdn(bool isIdn) => _$this._isIdn = isIdn;

  ExactMatchDomainBuilder();

  ExactMatchDomainBuilder get _$this {
    if (_$v != null) {
      _availabilityStatus = _$v.availabilityStatus;
      _syntaxStatus = _$v.syntaxStatus;
      _syntaxMessage = _$v.syntaxMessage;
      _isBackorderable = _$v.isBackorderable;
      _isDbsAvailable = _$v.isDbsAvailable;
      _isPurchasable = _$v.isPurchasable;
      _auctionId = _$v.auctionId;
      _auctionTypeId = _$v.auctionTypeId;
      _isAvailable = _$v.isAvailable;
      _isValid = _$v.isValid;
      _isNxd = _$v.isNxd;
      _index = _$v.index;
      _fqdn = _$v.fqdn;
      _extension = _$v.extension;
      _nameWithoutExtension = _$v.nameWithoutExtension;
      _domainScore = _$v.domainScore;
      _inventory = _$v.inventory;
      _tierId = _$v.tierId;
      _isPremiumTier = _$v.isPremiumTier;
      _phaseId = _$v.phaseId;
      _phaseCode = _$v.phaseCode;
      _price = _$v.price;
      _priceDisplay = _$v.priceDisplay;
      _priceDisplayInMicroUnits = _$v.priceDisplayInMicroUnits;
      _usdPrice = _$v.usdPrice;
      _productId = _$v.productId;
      _renewalProductId = _$v.renewalProductId;
      _vendorId = _$v.vendorId;
      _commissionPercent = _$v.commissionPercent;
      _isIdn = _$v.isIdn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExactMatchDomain other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExactMatchDomain;
  }

  @override
  void update(void Function(ExactMatchDomainBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExactMatchDomain build() {
    final _$result = _$v ??
        new _$ExactMatchDomain._(
            availabilityStatus: availabilityStatus,
            syntaxStatus: syntaxStatus,
            syntaxMessage: syntaxMessage,
            isBackorderable: isBackorderable,
            isDbsAvailable: isDbsAvailable,
            isPurchasable: isPurchasable,
            auctionId: auctionId,
            auctionTypeId: auctionTypeId,
            isAvailable: isAvailable,
            isValid: isValid,
            isNxd: isNxd,
            index: index,
            fqdn: fqdn,
            extension: extension,
            nameWithoutExtension: nameWithoutExtension,
            domainScore: domainScore,
            inventory: inventory,
            tierId: tierId,
            isPremiumTier: isPremiumTier,
            phaseId: phaseId,
            phaseCode: phaseCode,
            price: price,
            priceDisplay: priceDisplay,
            priceDisplayInMicroUnits: priceDisplayInMicroUnits,
            usdPrice: usdPrice,
            productId: productId,
            renewalProductId: renewalProductId,
            vendorId: vendorId,
            commissionPercent: commissionPercent,
            isIdn: isIdn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
