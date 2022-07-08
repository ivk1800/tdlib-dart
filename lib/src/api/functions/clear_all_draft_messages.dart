import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Clears message drafts in all chats
/// Returns [Ok]
@immutable
class ClearAllDraftMessages extends TdFunction {
  const ClearAllDraftMessages({
    required this.excludeSecretChats,
  });

  /// [excludeSecretChats] Pass true to keep local message drafts in secret
  /// chats
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
