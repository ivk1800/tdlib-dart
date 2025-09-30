import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a sponsored chat
@immutable
class SponsoredChat extends TdObject {
  const SponsoredChat({
    required this.uniqueId,
    required this.chatId,
    this.sponsorInfo,
    required this.additionalInfo,
  });

  /// [uniqueId] Unique identifier of this result
  final int uniqueId;

  /// [chatId] Chat identifier
  final int chatId;

  /// [sponsorInfo] Additional optional information about the sponsor to be
  /// shown along with the chat
  final String? sponsorInfo;

  /// [additionalInfo] If non-empty, additional information about the sponsored
  /// chat to be shown along with the chat
  final String additionalInfo;

  static const String constructor = 'sponsoredChat';

  static SponsoredChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredChat(
      uniqueId: json['unique_id'] as int,
      chatId: json['chat_id'] as int,
      sponsorInfo: json['sponsor_info'] as String?,
      additionalInfo: json['additional_info'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'unique_id': uniqueId,
    'chat_id': chatId,
    'sponsor_info': sponsorInfo,
    'additional_info': additionalInfo,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
