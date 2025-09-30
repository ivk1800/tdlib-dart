import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the user clicked a video message advertisement
/// Returns [Ok]
@immutable
class ClickVideoMessageAdvertisement extends TdFunction {
  const ClickVideoMessageAdvertisement({required this.advertisementUniqueId});

  /// [advertisementUniqueId] Unique identifier of the advertisement
  final int advertisementUniqueId;

  static const String constructor = 'clickVideoMessageAdvertisement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'advertisement_unique_id': advertisementUniqueId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
