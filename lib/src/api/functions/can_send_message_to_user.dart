import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Check whether the current user can message another user or try to create a
/// chat with them
/// Returns [CanSendMessageToUserResult]
@immutable
class CanSendMessageToUser extends TdFunction {
  const CanSendMessageToUser({
    required this.userId,
    required this.onlyLocal,
  });

  /// [userId] Identifier of the other user
  final int userId;

  /// [onlyLocal] Pass true to get only locally available information without
  /// sending network requests
  final bool onlyLocal;

  static const String constructor = 'canSendMessageToUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'only_local': onlyLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
