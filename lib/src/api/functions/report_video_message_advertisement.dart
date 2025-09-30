import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports a video message advertisement to Telegram moderators
/// Returns [ReportSponsoredResult]
@immutable
class ReportVideoMessageAdvertisement extends TdFunction {
  const ReportVideoMessageAdvertisement({
    required this.advertisementUniqueId,
    required this.optionId,
  });

  /// [advertisementUniqueId] Unique identifier of the advertisement
  final int advertisementUniqueId;

  /// [optionId] Option identifier chosen by the user; leave empty for the
  /// initial request
  final String optionId;

  static const String constructor = 'reportVideoMessageAdvertisement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'advertisement_unique_id': advertisementUniqueId,
    'option_id': optionId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
