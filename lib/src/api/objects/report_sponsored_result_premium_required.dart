import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user asked to hide sponsored messages, but Telegram Premium is
/// required for this
@immutable
class ReportSponsoredResultPremiumRequired extends ReportSponsoredResult {
  const ReportSponsoredResultPremiumRequired();

  static const String constructor = 'reportSponsoredResultPremiumRequired';

  static ReportSponsoredResultPremiumRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ReportSponsoredResultPremiumRequired();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
