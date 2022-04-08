import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a globally unique push receiver identifier, which can be used to
/// identify which account has received a push notification
@immutable
class PushReceiverId extends TdObject {
  const PushReceiverId({
    required this.id,
  });

  /// [id] The globally unique identifier of push notification subscription
  final int id;

  static const String constructor = 'pushReceiverId';

  static PushReceiverId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushReceiverId(
      id: int.tryParse(json['id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
