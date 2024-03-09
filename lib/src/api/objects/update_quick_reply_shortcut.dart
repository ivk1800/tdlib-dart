import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Basic information about a quick reply shortcut has changed. This update is
/// guaranteed to come before the quick shortcut name is returned to the
/// application
@immutable
class UpdateQuickReplyShortcut extends Update {
  const UpdateQuickReplyShortcut({
    required this.shortcut,
  });

  /// [shortcut] New data about the shortcut
  final QuickReplyShortcut shortcut;

  static const String constructor = 'updateQuickReplyShortcut';

  static UpdateQuickReplyShortcut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateQuickReplyShortcut(
      shortcut: QuickReplyShortcut.fromJson(
          json['shortcut'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut': shortcut.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
