// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quota.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quota _$QuotaFromJson(Map<String, dynamic> json) => Quota(
      const IdConverter().fromJson(json['id'] as String),
      $enumDecode(_$ResourceTypeEnumMap, json['resourceType']),
      const UnsignedIntNullableConverter().fromJson(json['used'] as int?),
      const UnsignedIntNullableConverter().fromJson(json['limit'] as int?),
      $enumDecode(_$ScopeEnumMap, json['scope']),
      json['name'] as String,
      (json['dataTypes'] as List<dynamic>)
          .map((e) => const DataTypeConverter().fromJson(e as String))
          .toList(),
      warnLimit: const UnsignedIntNullableConverter()
          .fromJson(json['warnLimit'] as int?),
      softLimit: const UnsignedIntNullableConverter()
          .fromJson(json['softLimit'] as int?),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$QuotaToJson(Quota instance) {
  final val = <String, dynamic>{
    'id': const IdConverter().toJson(instance.id),
    'resourceType': _$ResourceTypeEnumMap[instance.resourceType]!,
    'used': const UnsignedIntNullableConverter().toJson(instance.used),
    'limit': const UnsignedIntNullableConverter().toJson(instance.limit),
    'scope': _$ScopeEnumMap[instance.scope]!,
    'name': instance.name,
    'dataTypes':
        instance.dataTypes.map(const DataTypeConverter().toJson).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('warnLimit',
      const UnsignedIntNullableConverter().toJson(instance.warnLimit));
  writeNotNull('softLimit',
      const UnsignedIntNullableConverter().toJson(instance.softLimit));
  writeNotNull('description', instance.description);
  return val;
}

const _$ResourceTypeEnumMap = {
  ResourceType.count: 'count',
  ResourceType.octets: 'octets',
};

const _$ScopeEnumMap = {
  Scope.account: 'account',
  Scope.domain: 'domain',
  Scope.global: 'global',
};
