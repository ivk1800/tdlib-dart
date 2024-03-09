import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The read date is unknown due to privacy settings of the other user
@immutable
class MessageReadDateUserPrivacyRestricted extends MessageReadDate {
  const MessageReadDateUserPrivacyRestricted();

  static const String constructor = 'messageReadDateUserPrivacyRestricted';

  static MessageReadDateUserPrivacyRestricted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateUserPrivacyRestricted();
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
