import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user connected a website by logging in using Telegram Login Widget on
/// it
@immutable
class BotWriteAccessAllowReasonConnectedWebsite
    extends BotWriteAccessAllowReason {
  const BotWriteAccessAllowReasonConnectedWebsite({
    required this.domainName,
  });

  /// [domainName] Domain name of the connected website
  final String domainName;

  static const String constructor = 'botWriteAccessAllowReasonConnectedWebsite';

  static BotWriteAccessAllowReasonConnectedWebsite? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotWriteAccessAllowReasonConnectedWebsite(
      domainName: json['domain_name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'domain_name': domainName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
