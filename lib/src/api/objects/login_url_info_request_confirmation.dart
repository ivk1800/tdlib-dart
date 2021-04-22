import '../tdapi.dart';

/// An authorization confirmation dialog needs to be shown to the user
class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  LoginUrlInfoRequestConfirmation(
      {required this.url,
      required this.domain,
      required this.botUserId,
      required this.requestWriteAccess});

  /// [url] An HTTP URL to be opened
  final String url;

  /// [domain] A domain of the URL
  final String domain;

  /// [botUserId] User identifier of a bot linked with the website
  final int botUserId;

  /// [requestWriteAccess] True, if the user needs to be requested to give the
  /// permission to the bot to send them messages
  final bool requestWriteAccess;

  static const String CONSTRUCTOR = 'loginUrlInfoRequestConfirmation';

  static LoginUrlInfoRequestConfirmation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LoginUrlInfoRequestConfirmation(
        url: json['url'],
        domain: json['domain'],
        botUserId: json['bot_user_id'],
        requestWriteAccess: json['request_write_access']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'url': this.url,
        'domain': this.domain,
        'bot_user_id': this.botUserId,
        'request_write_access': this.requestWriteAccess,
        '@type': CONSTRUCTOR
      };
}
