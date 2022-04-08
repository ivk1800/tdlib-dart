import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an existing chat corresponding to a given user
/// Returns [Chat]
@immutable
class CreatePrivateChat extends TdFunction {
  const CreatePrivateChat({
    required this.userId,
    required this.force,
  });

  /// [userId] User identifier
  final int userId;

  /// [force] If true, the chat will be created without network request. In this
  /// case all information about the chat except its type, title and photo can
  /// be incorrect
  final bool force;

  static const String constructor = 'createPrivateChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'force': force,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
