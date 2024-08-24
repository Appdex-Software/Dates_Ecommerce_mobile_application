// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DateData _$DateDataFromJson(Map<String, dynamic> json) {
  return _DateData.fromJson(json);
}

/// @nodoc
mixin _$DateData {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get category => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'families_quantity')
  num? get familiesQuantity => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'fasting_quantity')
  num? get fastingQuantity => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'charities_quantity')
  num? get charitiesQuantity => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get image => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'total_quantity')
  num? get totalQuantity => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(9)
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateDataCopyWith<DateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateDataCopyWith<$Res> {
  factory $DateDataCopyWith(DateData value, $Res Function(DateData) then) =
      _$DateDataCopyWithImpl<$Res, DateData>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? category,
      @HiveField(2) @JsonKey(name: 'families_quantity') num? familiesQuantity,
      @HiveField(3) @JsonKey(name: 'fasting_quantity') num? fastingQuantity,
      @HiveField(4) @JsonKey(name: 'charities_quantity') num? charitiesQuantity,
      @HiveField(5) String? name,
      @HiveField(6) String? image,
      @HiveField(7) @JsonKey(name: 'total_quantity') num? totalQuantity,
      @HiveField(8) String? description,
      @HiveField(9) int quantity});
}

/// @nodoc
class _$DateDataCopyWithImpl<$Res, $Val extends DateData>
    implements $DateDataCopyWith<$Res> {
  _$DateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? familiesQuantity = freezed,
    Object? fastingQuantity = freezed,
    Object? charitiesQuantity = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? totalQuantity = freezed,
    Object? description = freezed,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      familiesQuantity: freezed == familiesQuantity
          ? _value.familiesQuantity
          : familiesQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      fastingQuantity: freezed == fastingQuantity
          ? _value.fastingQuantity
          : fastingQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      charitiesQuantity: freezed == charitiesQuantity
          ? _value.charitiesQuantity
          : charitiesQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuantity: freezed == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateDataImplCopyWith<$Res>
    implements $DateDataCopyWith<$Res> {
  factory _$$DateDataImplCopyWith(
          _$DateDataImpl value, $Res Function(_$DateDataImpl) then) =
      __$$DateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? category,
      @HiveField(2) @JsonKey(name: 'families_quantity') num? familiesQuantity,
      @HiveField(3) @JsonKey(name: 'fasting_quantity') num? fastingQuantity,
      @HiveField(4) @JsonKey(name: 'charities_quantity') num? charitiesQuantity,
      @HiveField(5) String? name,
      @HiveField(6) String? image,
      @HiveField(7) @JsonKey(name: 'total_quantity') num? totalQuantity,
      @HiveField(8) String? description,
      @HiveField(9) int quantity});
}

/// @nodoc
class __$$DateDataImplCopyWithImpl<$Res>
    extends _$DateDataCopyWithImpl<$Res, _$DateDataImpl>
    implements _$$DateDataImplCopyWith<$Res> {
  __$$DateDataImplCopyWithImpl(
      _$DateDataImpl _value, $Res Function(_$DateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? familiesQuantity = freezed,
    Object? fastingQuantity = freezed,
    Object? charitiesQuantity = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? totalQuantity = freezed,
    Object? description = freezed,
    Object? quantity = null,
  }) {
    return _then(_$DateDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      familiesQuantity: freezed == familiesQuantity
          ? _value.familiesQuantity
          : familiesQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      fastingQuantity: freezed == fastingQuantity
          ? _value.fastingQuantity
          : fastingQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      charitiesQuantity: freezed == charitiesQuantity
          ? _value.charitiesQuantity
          : charitiesQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuantity: freezed == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateDataImpl extends _DateData {
  _$DateDataImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.category,
      @HiveField(2) @JsonKey(name: 'families_quantity') this.familiesQuantity,
      @HiveField(3) @JsonKey(name: 'fasting_quantity') this.fastingQuantity,
      @HiveField(4) @JsonKey(name: 'charities_quantity') this.charitiesQuantity,
      @HiveField(5) this.name,
      @HiveField(6) this.image,
      @HiveField(7) @JsonKey(name: 'total_quantity') this.totalQuantity,
      @HiveField(8) this.description,
      @HiveField(9) this.quantity = 1})
      : super._();

  factory _$DateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateDataImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? category;
  @override
  @HiveField(2)
  @JsonKey(name: 'families_quantity')
  final num? familiesQuantity;
  @override
  @HiveField(3)
  @JsonKey(name: 'fasting_quantity')
  final num? fastingQuantity;
  @override
  @HiveField(4)
  @JsonKey(name: 'charities_quantity')
  final num? charitiesQuantity;
  @override
  @HiveField(5)
  final String? name;
  @override
  @HiveField(6)
  final String? image;
  @override
  @HiveField(7)
  @JsonKey(name: 'total_quantity')
  final num? totalQuantity;
  @override
  @HiveField(8)
  final String? description;
  @override
  @JsonKey()
  @HiveField(9)
  final int quantity;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateDataImplCopyWith<_$DateDataImpl> get copyWith =>
      __$$DateDataImplCopyWithImpl<_$DateDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateDataImplToJson(
      this,
    );
  }
}

abstract class _DateData extends DateData {
  factory _DateData(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? category,
      @HiveField(2)
      @JsonKey(name: 'families_quantity')
      final num? familiesQuantity,
      @HiveField(3)
      @JsonKey(name: 'fasting_quantity')
      final num? fastingQuantity,
      @HiveField(4)
      @JsonKey(name: 'charities_quantity')
      final num? charitiesQuantity,
      @HiveField(5) final String? name,
      @HiveField(6) final String? image,
      @HiveField(7) @JsonKey(name: 'total_quantity') final num? totalQuantity,
      @HiveField(8) final String? description,
      @HiveField(9) final int quantity}) = _$DateDataImpl;
  _DateData._() : super._();

  factory _DateData.fromJson(Map<String, dynamic> json) =
      _$DateDataImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get category;
  @override
  @HiveField(2)
  @JsonKey(name: 'families_quantity')
  num? get familiesQuantity;
  @override
  @HiveField(3)
  @JsonKey(name: 'fasting_quantity')
  num? get fastingQuantity;
  @override
  @HiveField(4)
  @JsonKey(name: 'charities_quantity')
  num? get charitiesQuantity;
  @override
  @HiveField(5)
  String? get name;
  @override
  @HiveField(6)
  String? get image;
  @override
  @HiveField(7)
  @JsonKey(name: 'total_quantity')
  num? get totalQuantity;
  @override
  @HiveField(8)
  String? get description;
  @override
  @HiveField(9)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$DateDataImplCopyWith<_$DateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
