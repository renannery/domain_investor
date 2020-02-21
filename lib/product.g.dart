// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Product> _$productSerializer = new _$ProductSerializer();
Serializer<PriceInfo> _$priceInfoSerializer = new _$PriceInfoSerializer();

class _$ProductSerializer implements StructuredSerializer<Product> {
  @override
  final Iterable<Type> types = const [Product, _$Product];
  @override
  final String wireName = 'Product';

  @override
  Iterable<Object> serialize(Serializers serializers, Product object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'HasIcannFee',
      serializers.serialize(object.hasIcannFee,
          specifiedType: const FullType(bool)),
      'PhaseCode',
      serializers.serialize(object.phaseCode,
          specifiedType: const FullType(String)),
      'PhaseId',
      serializers.serialize(object.phaseId, specifiedType: const FullType(int)),
      'ProductId',
      serializers.serialize(object.productId,
          specifiedType: const FullType(int)),
      'RenewalProductId',
      serializers.serialize(object.renewalProductId,
          specifiedType: const FullType(int)),
      'TierId',
      serializers.serialize(object.tierId, specifiedType: const FullType(int)),
      'Tld',
      serializers.serialize(object.tld, specifiedType: const FullType(String)),
      'PriceInfo',
      serializers.serialize(object.priceInfo,
          specifiedType: const FullType(PriceInfo)),
    ];

    return result;
  }

  @override
  Product deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'HasIcannFee':
          result.hasIcannFee = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'PhaseCode':
          result.phaseCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PhaseId':
          result.phaseId = serializers.deserialize(value,
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
        case 'TierId':
          result.tierId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Tld':
          result.tld = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PriceInfo':
          result.priceInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(PriceInfo)) as PriceInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$PriceInfoSerializer implements StructuredSerializer<PriceInfo> {
  @override
  final Iterable<Type> types = const [PriceInfo, _$PriceInfo];
  @override
  final String wireName = 'PriceInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, PriceInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.currentPriceinMicroUnits != null) {
      result
        ..add('CurrentPriceinMicroUnits')
        ..add(serializers.serialize(object.currentPriceinMicroUnits,
            specifiedType: const FullType(int)));
    }
    if (object.currentPrice != null) {
      result
        ..add('CurrentPrice')
        ..add(serializers.serialize(object.currentPrice,
            specifiedType: const FullType(double)));
    }
    if (object.currentPriceDisplay != null) {
      result
        ..add('CurrentPriceDisplay')
        ..add(serializers.serialize(object.currentPriceDisplay,
            specifiedType: const FullType(String)));
    }
    if (object.isPromoDiscount != null) {
      result
        ..add('IsPromoDiscount')
        ..add(serializers.serialize(object.isPromoDiscount,
            specifiedType: const FullType(bool)));
    }
    if (object.listPrice != null) {
      result
        ..add('ListPrice')
        ..add(serializers.serialize(object.listPrice,
            specifiedType: const FullType(double)));
    }
    if (object.listPriceDisplay != null) {
      result
        ..add('ListPriceDisplay')
        ..add(serializers.serialize(object.listPriceDisplay,
            specifiedType: const FullType(String)));
    }
    if (object.listPriceinMicroUnits != null) {
      result
        ..add('ListPriceinMicroUnits')
        ..add(serializers.serialize(object.listPriceinMicroUnits,
            specifiedType: const FullType(int)));
    }
    if (object.additionalYearsPrice != null) {
      result
        ..add('AdditionalYearsPrice')
        ..add(serializers.serialize(object.additionalYearsPrice,
            specifiedType: const FullType(double)));
    }
    if (object.additionalYearsPriceDisplay != null) {
      result
        ..add('AdditionalYearsPriceDisplay')
        ..add(serializers.serialize(object.additionalYearsPriceDisplay,
            specifiedType: const FullType(String)));
    }
    if (object.overridePriceUsd != null) {
      result
        ..add('OverridePriceUsd')
        ..add(serializers.serialize(object.overridePriceUsd,
            specifiedType: const FullType(int)));
    }
    if (object.promoRegLengthFlag != null) {
      result
        ..add('PromoRegLengthFlag')
        ..add(serializers.serialize(object.promoRegLengthFlag,
            specifiedType: const FullType(int)));
    }
    if (object.renewalPriceDisplay != null) {
      result
        ..add('RenewalPriceDisplay')
        ..add(serializers.serialize(object.renewalPriceDisplay,
            specifiedType: const FullType(String)));
    }
    if (object.vatFees != null) {
      result
        ..add('VatFees')
        ..add(serializers.serialize(object.vatFees,
            specifiedType: const FullType(int)));
    }
    if (object.isVATIncludedInPrice != null) {
      result
        ..add('IsVATIncludedInPrice')
        ..add(serializers.serialize(object.isVATIncludedInPrice,
            specifiedType: const FullType(bool)));
    }
    if (object.applicationFee != null) {
      result
        ..add('ApplicationFee')
        ..add(serializers.serialize(object.applicationFee,
            specifiedType: const FullType(int)));
    }
    if (object.applicationFeeDisplay != null) {
      result
        ..add('ApplicationFeeDisplay')
        ..add(serializers.serialize(object.applicationFeeDisplay,
            specifiedType: const FullType(String)));
    }
    if (object.totalListPriceDisplay != null) {
      result
        ..add('TotalListPriceDisplay')
        ..add(serializers.serialize(object.totalListPriceDisplay,
            specifiedType: const FullType(String)));
    }
    if (object.totalCurrentPriceDisplay != null) {
      result
        ..add('TotalCurrentPriceDisplay')
        ..add(serializers.serialize(object.totalCurrentPriceDisplay,
            specifiedType: const FullType(String)));
    }
    if (object.minimumYears != null) {
      result
        ..add('MinimumYears')
        ..add(serializers.serialize(object.minimumYears,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PriceInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PriceInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'CurrentPriceinMicroUnits':
          result.currentPriceinMicroUnits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'CurrentPrice':
          result.currentPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'CurrentPriceDisplay':
          result.currentPriceDisplay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'IsPromoDiscount':
          result.isPromoDiscount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ListPrice':
          result.listPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'ListPriceDisplay':
          result.listPriceDisplay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ListPriceinMicroUnits':
          result.listPriceinMicroUnits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'AdditionalYearsPrice':
          result.additionalYearsPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'AdditionalYearsPriceDisplay':
          result.additionalYearsPriceDisplay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'OverridePriceUsd':
          result.overridePriceUsd = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'PromoRegLengthFlag':
          result.promoRegLengthFlag = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'RenewalPriceDisplay':
          result.renewalPriceDisplay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'VatFees':
          result.vatFees = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'IsVATIncludedInPrice':
          result.isVATIncludedInPrice = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ApplicationFee':
          result.applicationFee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ApplicationFeeDisplay':
          result.applicationFeeDisplay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TotalListPriceDisplay':
          result.totalListPriceDisplay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TotalCurrentPriceDisplay':
          result.totalCurrentPriceDisplay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'MinimumYears':
          result.minimumYears = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Product extends Product {
  @override
  final bool hasIcannFee;
  @override
  final String phaseCode;
  @override
  final int phaseId;
  @override
  final int productId;
  @override
  final int renewalProductId;
  @override
  final int tierId;
  @override
  final String tld;
  @override
  final PriceInfo priceInfo;

  factory _$Product([void Function(ProductBuilder) updates]) =>
      (new ProductBuilder()..update(updates)).build();

  _$Product._(
      {this.hasIcannFee,
      this.phaseCode,
      this.phaseId,
      this.productId,
      this.renewalProductId,
      this.tierId,
      this.tld,
      this.priceInfo})
      : super._() {
    if (hasIcannFee == null) {
      throw new BuiltValueNullFieldError('Product', 'hasIcannFee');
    }
    if (phaseCode == null) {
      throw new BuiltValueNullFieldError('Product', 'phaseCode');
    }
    if (phaseId == null) {
      throw new BuiltValueNullFieldError('Product', 'phaseId');
    }
    if (productId == null) {
      throw new BuiltValueNullFieldError('Product', 'productId');
    }
    if (renewalProductId == null) {
      throw new BuiltValueNullFieldError('Product', 'renewalProductId');
    }
    if (tierId == null) {
      throw new BuiltValueNullFieldError('Product', 'tierId');
    }
    if (tld == null) {
      throw new BuiltValueNullFieldError('Product', 'tld');
    }
    if (priceInfo == null) {
      throw new BuiltValueNullFieldError('Product', 'priceInfo');
    }
  }

  @override
  Product rebuild(void Function(ProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => new ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        hasIcannFee == other.hasIcannFee &&
        phaseCode == other.phaseCode &&
        phaseId == other.phaseId &&
        productId == other.productId &&
        renewalProductId == other.renewalProductId &&
        tierId == other.tierId &&
        tld == other.tld &&
        priceInfo == other.priceInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, hasIcannFee.hashCode),
                                phaseCode.hashCode),
                            phaseId.hashCode),
                        productId.hashCode),
                    renewalProductId.hashCode),
                tierId.hashCode),
            tld.hashCode),
        priceInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Product')
          ..add('hasIcannFee', hasIcannFee)
          ..add('phaseCode', phaseCode)
          ..add('phaseId', phaseId)
          ..add('productId', productId)
          ..add('renewalProductId', renewalProductId)
          ..add('tierId', tierId)
          ..add('tld', tld)
          ..add('priceInfo', priceInfo))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product _$v;

  bool _hasIcannFee;
  bool get hasIcannFee => _$this._hasIcannFee;
  set hasIcannFee(bool hasIcannFee) => _$this._hasIcannFee = hasIcannFee;

  String _phaseCode;
  String get phaseCode => _$this._phaseCode;
  set phaseCode(String phaseCode) => _$this._phaseCode = phaseCode;

  int _phaseId;
  int get phaseId => _$this._phaseId;
  set phaseId(int phaseId) => _$this._phaseId = phaseId;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  int _renewalProductId;
  int get renewalProductId => _$this._renewalProductId;
  set renewalProductId(int renewalProductId) =>
      _$this._renewalProductId = renewalProductId;

  int _tierId;
  int get tierId => _$this._tierId;
  set tierId(int tierId) => _$this._tierId = tierId;

  String _tld;
  String get tld => _$this._tld;
  set tld(String tld) => _$this._tld = tld;

  PriceInfoBuilder _priceInfo;
  PriceInfoBuilder get priceInfo =>
      _$this._priceInfo ??= new PriceInfoBuilder();
  set priceInfo(PriceInfoBuilder priceInfo) => _$this._priceInfo = priceInfo;

  ProductBuilder();

  ProductBuilder get _$this {
    if (_$v != null) {
      _hasIcannFee = _$v.hasIcannFee;
      _phaseCode = _$v.phaseCode;
      _phaseId = _$v.phaseId;
      _productId = _$v.productId;
      _renewalProductId = _$v.renewalProductId;
      _tierId = _$v.tierId;
      _tld = _$v.tld;
      _priceInfo = _$v.priceInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Product build() {
    _$Product _$result;
    try {
      _$result = _$v ??
          new _$Product._(
              hasIcannFee: hasIcannFee,
              phaseCode: phaseCode,
              phaseId: phaseId,
              productId: productId,
              renewalProductId: renewalProductId,
              tierId: tierId,
              tld: tld,
              priceInfo: priceInfo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'priceInfo';
        priceInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Product', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PriceInfo extends PriceInfo {
  @override
  final int currentPriceinMicroUnits;
  @override
  final double currentPrice;
  @override
  final String currentPriceDisplay;
  @override
  final bool isPromoDiscount;
  @override
  final double listPrice;
  @override
  final String listPriceDisplay;
  @override
  final int listPriceinMicroUnits;
  @override
  final double additionalYearsPrice;
  @override
  final String additionalYearsPriceDisplay;
  @override
  final int overridePriceUsd;
  @override
  final int promoRegLengthFlag;
  @override
  final String renewalPriceDisplay;
  @override
  final int vatFees;
  @override
  final bool isVATIncludedInPrice;
  @override
  final int applicationFee;
  @override
  final String applicationFeeDisplay;
  @override
  final String totalListPriceDisplay;
  @override
  final String totalCurrentPriceDisplay;
  @override
  final int minimumYears;

  factory _$PriceInfo([void Function(PriceInfoBuilder) updates]) =>
      (new PriceInfoBuilder()..update(updates)).build();

  _$PriceInfo._(
      {this.currentPriceinMicroUnits,
      this.currentPrice,
      this.currentPriceDisplay,
      this.isPromoDiscount,
      this.listPrice,
      this.listPriceDisplay,
      this.listPriceinMicroUnits,
      this.additionalYearsPrice,
      this.additionalYearsPriceDisplay,
      this.overridePriceUsd,
      this.promoRegLengthFlag,
      this.renewalPriceDisplay,
      this.vatFees,
      this.isVATIncludedInPrice,
      this.applicationFee,
      this.applicationFeeDisplay,
      this.totalListPriceDisplay,
      this.totalCurrentPriceDisplay,
      this.minimumYears})
      : super._();

  @override
  PriceInfo rebuild(void Function(PriceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PriceInfoBuilder toBuilder() => new PriceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PriceInfo &&
        currentPriceinMicroUnits == other.currentPriceinMicroUnits &&
        currentPrice == other.currentPrice &&
        currentPriceDisplay == other.currentPriceDisplay &&
        isPromoDiscount == other.isPromoDiscount &&
        listPrice == other.listPrice &&
        listPriceDisplay == other.listPriceDisplay &&
        listPriceinMicroUnits == other.listPriceinMicroUnits &&
        additionalYearsPrice == other.additionalYearsPrice &&
        additionalYearsPriceDisplay == other.additionalYearsPriceDisplay &&
        overridePriceUsd == other.overridePriceUsd &&
        promoRegLengthFlag == other.promoRegLengthFlag &&
        renewalPriceDisplay == other.renewalPriceDisplay &&
        vatFees == other.vatFees &&
        isVATIncludedInPrice == other.isVATIncludedInPrice &&
        applicationFee == other.applicationFee &&
        applicationFeeDisplay == other.applicationFeeDisplay &&
        totalListPriceDisplay == other.totalListPriceDisplay &&
        totalCurrentPriceDisplay == other.totalCurrentPriceDisplay &&
        minimumYears == other.minimumYears;
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
                                                                            $jc(
                                                                                0,
                                                                                currentPriceinMicroUnits
                                                                                    .hashCode),
                                                                            currentPrice
                                                                                .hashCode),
                                                                        currentPriceDisplay
                                                                            .hashCode),
                                                                    isPromoDiscount
                                                                        .hashCode),
                                                                listPrice
                                                                    .hashCode),
                                                            listPriceDisplay
                                                                .hashCode),
                                                        listPriceinMicroUnits
                                                            .hashCode),
                                                    additionalYearsPrice
                                                        .hashCode),
                                                additionalYearsPriceDisplay
                                                    .hashCode),
                                            overridePriceUsd.hashCode),
                                        promoRegLengthFlag.hashCode),
                                    renewalPriceDisplay.hashCode),
                                vatFees.hashCode),
                            isVATIncludedInPrice.hashCode),
                        applicationFee.hashCode),
                    applicationFeeDisplay.hashCode),
                totalListPriceDisplay.hashCode),
            totalCurrentPriceDisplay.hashCode),
        minimumYears.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PriceInfo')
          ..add('currentPriceinMicroUnits', currentPriceinMicroUnits)
          ..add('currentPrice', currentPrice)
          ..add('currentPriceDisplay', currentPriceDisplay)
          ..add('isPromoDiscount', isPromoDiscount)
          ..add('listPrice', listPrice)
          ..add('listPriceDisplay', listPriceDisplay)
          ..add('listPriceinMicroUnits', listPriceinMicroUnits)
          ..add('additionalYearsPrice', additionalYearsPrice)
          ..add('additionalYearsPriceDisplay', additionalYearsPriceDisplay)
          ..add('overridePriceUsd', overridePriceUsd)
          ..add('promoRegLengthFlag', promoRegLengthFlag)
          ..add('renewalPriceDisplay', renewalPriceDisplay)
          ..add('vatFees', vatFees)
          ..add('isVATIncludedInPrice', isVATIncludedInPrice)
          ..add('applicationFee', applicationFee)
          ..add('applicationFeeDisplay', applicationFeeDisplay)
          ..add('totalListPriceDisplay', totalListPriceDisplay)
          ..add('totalCurrentPriceDisplay', totalCurrentPriceDisplay)
          ..add('minimumYears', minimumYears))
        .toString();
  }
}

class PriceInfoBuilder implements Builder<PriceInfo, PriceInfoBuilder> {
  _$PriceInfo _$v;

  int _currentPriceinMicroUnits;
  int get currentPriceinMicroUnits => _$this._currentPriceinMicroUnits;
  set currentPriceinMicroUnits(int currentPriceinMicroUnits) =>
      _$this._currentPriceinMicroUnits = currentPriceinMicroUnits;

  double _currentPrice;
  double get currentPrice => _$this._currentPrice;
  set currentPrice(double currentPrice) => _$this._currentPrice = currentPrice;

  String _currentPriceDisplay;
  String get currentPriceDisplay => _$this._currentPriceDisplay;
  set currentPriceDisplay(String currentPriceDisplay) =>
      _$this._currentPriceDisplay = currentPriceDisplay;

  bool _isPromoDiscount;
  bool get isPromoDiscount => _$this._isPromoDiscount;
  set isPromoDiscount(bool isPromoDiscount) =>
      _$this._isPromoDiscount = isPromoDiscount;

  double _listPrice;
  double get listPrice => _$this._listPrice;
  set listPrice(double listPrice) => _$this._listPrice = listPrice;

  String _listPriceDisplay;
  String get listPriceDisplay => _$this._listPriceDisplay;
  set listPriceDisplay(String listPriceDisplay) =>
      _$this._listPriceDisplay = listPriceDisplay;

  int _listPriceinMicroUnits;
  int get listPriceinMicroUnits => _$this._listPriceinMicroUnits;
  set listPriceinMicroUnits(int listPriceinMicroUnits) =>
      _$this._listPriceinMicroUnits = listPriceinMicroUnits;

  double _additionalYearsPrice;
  double get additionalYearsPrice => _$this._additionalYearsPrice;
  set additionalYearsPrice(double additionalYearsPrice) =>
      _$this._additionalYearsPrice = additionalYearsPrice;

  String _additionalYearsPriceDisplay;
  String get additionalYearsPriceDisplay => _$this._additionalYearsPriceDisplay;
  set additionalYearsPriceDisplay(String additionalYearsPriceDisplay) =>
      _$this._additionalYearsPriceDisplay = additionalYearsPriceDisplay;

  int _overridePriceUsd;
  int get overridePriceUsd => _$this._overridePriceUsd;
  set overridePriceUsd(int overridePriceUsd) =>
      _$this._overridePriceUsd = overridePriceUsd;

  int _promoRegLengthFlag;
  int get promoRegLengthFlag => _$this._promoRegLengthFlag;
  set promoRegLengthFlag(int promoRegLengthFlag) =>
      _$this._promoRegLengthFlag = promoRegLengthFlag;

  String _renewalPriceDisplay;
  String get renewalPriceDisplay => _$this._renewalPriceDisplay;
  set renewalPriceDisplay(String renewalPriceDisplay) =>
      _$this._renewalPriceDisplay = renewalPriceDisplay;

  int _vatFees;
  int get vatFees => _$this._vatFees;
  set vatFees(int vatFees) => _$this._vatFees = vatFees;

  bool _isVATIncludedInPrice;
  bool get isVATIncludedInPrice => _$this._isVATIncludedInPrice;
  set isVATIncludedInPrice(bool isVATIncludedInPrice) =>
      _$this._isVATIncludedInPrice = isVATIncludedInPrice;

  int _applicationFee;
  int get applicationFee => _$this._applicationFee;
  set applicationFee(int applicationFee) =>
      _$this._applicationFee = applicationFee;

  String _applicationFeeDisplay;
  String get applicationFeeDisplay => _$this._applicationFeeDisplay;
  set applicationFeeDisplay(String applicationFeeDisplay) =>
      _$this._applicationFeeDisplay = applicationFeeDisplay;

  String _totalListPriceDisplay;
  String get totalListPriceDisplay => _$this._totalListPriceDisplay;
  set totalListPriceDisplay(String totalListPriceDisplay) =>
      _$this._totalListPriceDisplay = totalListPriceDisplay;

  String _totalCurrentPriceDisplay;
  String get totalCurrentPriceDisplay => _$this._totalCurrentPriceDisplay;
  set totalCurrentPriceDisplay(String totalCurrentPriceDisplay) =>
      _$this._totalCurrentPriceDisplay = totalCurrentPriceDisplay;

  int _minimumYears;
  int get minimumYears => _$this._minimumYears;
  set minimumYears(int minimumYears) => _$this._minimumYears = minimumYears;

  PriceInfoBuilder();

  PriceInfoBuilder get _$this {
    if (_$v != null) {
      _currentPriceinMicroUnits = _$v.currentPriceinMicroUnits;
      _currentPrice = _$v.currentPrice;
      _currentPriceDisplay = _$v.currentPriceDisplay;
      _isPromoDiscount = _$v.isPromoDiscount;
      _listPrice = _$v.listPrice;
      _listPriceDisplay = _$v.listPriceDisplay;
      _listPriceinMicroUnits = _$v.listPriceinMicroUnits;
      _additionalYearsPrice = _$v.additionalYearsPrice;
      _additionalYearsPriceDisplay = _$v.additionalYearsPriceDisplay;
      _overridePriceUsd = _$v.overridePriceUsd;
      _promoRegLengthFlag = _$v.promoRegLengthFlag;
      _renewalPriceDisplay = _$v.renewalPriceDisplay;
      _vatFees = _$v.vatFees;
      _isVATIncludedInPrice = _$v.isVATIncludedInPrice;
      _applicationFee = _$v.applicationFee;
      _applicationFeeDisplay = _$v.applicationFeeDisplay;
      _totalListPriceDisplay = _$v.totalListPriceDisplay;
      _totalCurrentPriceDisplay = _$v.totalCurrentPriceDisplay;
      _minimumYears = _$v.minimumYears;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PriceInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PriceInfo;
  }

  @override
  void update(void Function(PriceInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PriceInfo build() {
    final _$result = _$v ??
        new _$PriceInfo._(
            currentPriceinMicroUnits: currentPriceinMicroUnits,
            currentPrice: currentPrice,
            currentPriceDisplay: currentPriceDisplay,
            isPromoDiscount: isPromoDiscount,
            listPrice: listPrice,
            listPriceDisplay: listPriceDisplay,
            listPriceinMicroUnits: listPriceinMicroUnits,
            additionalYearsPrice: additionalYearsPrice,
            additionalYearsPriceDisplay: additionalYearsPriceDisplay,
            overridePriceUsd: overridePriceUsd,
            promoRegLengthFlag: promoRegLengthFlag,
            renewalPriceDisplay: renewalPriceDisplay,
            vatFees: vatFees,
            isVATIncludedInPrice: isVATIncludedInPrice,
            applicationFee: applicationFee,
            applicationFeeDisplay: applicationFeeDisplay,
            totalListPriceDisplay: totalListPriceDisplay,
            totalCurrentPriceDisplay: totalCurrentPriceDisplay,
            minimumYears: minimumYears);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
