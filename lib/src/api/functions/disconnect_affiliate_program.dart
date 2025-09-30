import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Disconnects an affiliate program from the given affiliate and immediately
/// deactivates its referral link. Returns updated information about the
/// disconnected affiliate program
/// Returns [ConnectedAffiliateProgram]
@immutable
class DisconnectAffiliateProgram extends TdFunction {
  const DisconnectAffiliateProgram({
    required this.affiliate,
    required this.url,
  });

  /// [affiliate] The affiliate to which the affiliate program is connected
  final AffiliateType affiliate;

  /// [url] The referral link of the affiliate program
  final String url;

  static const String constructor = 'disconnectAffiliateProgram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'affiliate': affiliate.toJson(),
    'url': url,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
