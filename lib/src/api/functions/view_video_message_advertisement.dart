import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the user viewed a video message advertisement
/// Returns [Ok]
@immutable
class ViewVideoMessageAdvertisement extends TdFunction {
  const ViewVideoMessageAdvertisement({required this.advertisementUniqueId});

  /// [advertisementUniqueId] Unique identifier of the advertisement
  final int advertisementUniqueId;

  static const String constructor = 'viewVideoMessageAdvertisement';

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
