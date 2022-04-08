import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Clears draft messages in all chats
/// Returns [Ok]
@immutable
class ClearAllDraftMessages extends TdFunction {
  const ClearAllDraftMessages({
    required this.excludeSecretChats,
  });

  /// [excludeSecretChats] If true, local draft messages in secret chats will
  /// not be cleared
  final bool excludeSecretChats;

  static const String constructor = 'clearAllDraftMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'exclude_secret_chats': excludeSecretChats,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
