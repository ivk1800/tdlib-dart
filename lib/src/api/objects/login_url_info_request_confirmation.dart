import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An authorization confirmation dialog needs to be shown to the user
@immutable
class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  const LoginUrlInfoRequestConfirmation({
    required this.url,
    required this.domain,
    required this.botUserId,
    required this.requestWriteAccess,
  });

  /// [url] An HTTP URL to be opened
  final String url;

  /// [domain] A domain of the URL
  final String domain;

  /// [botUserId] User identifier of a bot linked with the website
  final int botUserId;

  /// [requestWriteAccess] True, if the user needs to be requested to give the
  /// permission to the bot to send them messages
  final bool requestWriteAccess;

  static const String constructor = 'loginUrlInfoRequestConfirmation';

  static LoginUrlInfoRequestConfirmation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LoginUrlInfoRequestConfirmation(
      url: json['url'],
      domain: json['domain'],
      botUserId: json['bot_user_id'],
      requestWriteAccess: json['request_write_access'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'domain': domain,
        'bot_user_id': botUserId,
        'request_write_access': requestWriteAccess,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
