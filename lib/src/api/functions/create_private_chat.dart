import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns an existing chat corresponding to a given user
/// Returns [Chat]
class CreatePrivateChat extends TdFunction {
  CreatePrivateChat({required this.userId, required this.force});

  /// [userId] User identifier
  final int userId;

  /// [force] If true, the chat will be created without network request. In this
  /// case all information about the chat except its type, title and photo can
  /// be incorrect
  final bool force;

  static const String CONSTRUCTOR = 'createPrivateChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, 'force': this.force, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
