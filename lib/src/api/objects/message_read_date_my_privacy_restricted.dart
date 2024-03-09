import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The read date is unknown due to privacy settings of the current user, but
/// will be known if the user subscribes to Telegram Premium
@immutable
class MessageReadDateMyPrivacyRestricted extends MessageReadDate {
  const MessageReadDateMyPrivacyRestricted();

  static const String constructor = 'messageReadDateMyPrivacyRestricted';

  static MessageReadDateMyPrivacyRestricted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateMyPrivacyRestricted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
