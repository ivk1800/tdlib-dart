import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a given collectible item that was purchased at
/// https://fragment.com
/// Returns [CollectibleItemInfo]
@immutable
class GetCollectibleItemInfo extends TdFunction {
  const GetCollectibleItemInfo({
    required this.type,
  });

  /// [type] Type of the collectible item. The item must be used by a user and
  /// must be visible to the current user
  final CollectibleItemType type;

  static const String constructor = 'getCollectibleItemInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
