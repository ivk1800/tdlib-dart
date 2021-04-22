import '../tdapi.dart';

/// Contains a globally unique push receiver identifier, which can be used to
/// identify which account has received a push notification
class PushReceiverId extends TdObject {
  PushReceiverId({required this.id});

  /// [id] The globally unique identifier of push notification subscription
  final int id;

  static const String CONSTRUCTOR = 'pushReceiverId';

  static PushReceiverId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushReceiverId(id: int.tryParse(json['id']) ?? 0);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'id': this.id, '@type': CONSTRUCTOR};
}
