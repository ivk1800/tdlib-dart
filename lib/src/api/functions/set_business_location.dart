import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the business location of the current user. Requires Telegram
/// Business subscription
/// Returns [Ok]
@immutable
class SetBusinessLocation extends TdFunction {
  const SetBusinessLocation({
    this.location,
  });

  /// [location] The new location of the business; pass null to remove the
  /// location
  final BusinessLocation? location;

  static const String constructor = 'setBusinessLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
