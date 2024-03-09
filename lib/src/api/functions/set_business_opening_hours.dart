import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the business opening hours of the current user. Requires Telegram
/// Business subscription
/// Returns [Ok]
@immutable
class SetBusinessOpeningHours extends TdFunction {
  const SetBusinessOpeningHours({
    this.openingHours,
  });

  /// [openingHours] The new opening hours of the business; pass null to remove
  /// the opening hours
  final BusinessOpeningHours? openingHours;

  static const String constructor = 'setBusinessOpeningHours';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'opening_hours': openingHours?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
