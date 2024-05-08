import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A username
@immutable
class CollectibleItemTypeUsername extends CollectibleItemType {
  const CollectibleItemTypeUsername({
    required this.username,
  });

  /// [username] The username
  final String username;

  static const String constructor = 'collectibleItemTypeUsername';

  static CollectibleItemTypeUsername? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CollectibleItemTypeUsername(
      username: json['username'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
