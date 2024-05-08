import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a collectible item that can be purchased at https://fragment.com
@immutable
abstract class CollectibleItemType extends TdObject {
  const CollectibleItemType();

  static const String constructor = 'collectibleItemType';

  /// Inherited by:
  /// [CollectibleItemTypePhoneNumber]
  /// [CollectibleItemTypeUsername]
  static CollectibleItemType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CollectibleItemTypePhoneNumber.constructor:
        return CollectibleItemTypePhoneNumber.fromJson(json);
      case CollectibleItemTypeUsername.constructor:
        return CollectibleItemTypeUsername.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
