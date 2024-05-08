import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether the current user has sponsored messages enabled. The
/// setting has no effect for users without Telegram Premium for which
/// sponsored messages are always enabled
/// Returns [Ok]
@immutable
class ToggleHasSponsoredMessagesEnabled extends TdFunction {
  const ToggleHasSponsoredMessagesEnabled({
    required this.hasSponsoredMessagesEnabled,
  });

  /// [hasSponsoredMessagesEnabled] Pass true to enable sponsored messages for
  /// the current user; false to disable them
  final bool hasSponsoredMessagesEnabled;

  static const String constructor = 'toggleHasSponsoredMessagesEnabled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'has_sponsored_messages_enabled': hasSponsoredMessagesEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
