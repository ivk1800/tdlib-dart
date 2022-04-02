import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns network data usage statistics. Can be called before authorization
/// Returns [NetworkStatistics]
class GetNetworkStatistics extends TdFunction {
  GetNetworkStatistics({required this.onlyCurrent});

  /// [onlyCurrent] If true, returns only data for the current library launch
  final bool onlyCurrent;

  static const String CONSTRUCTOR = 'getNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'only_current': this.onlyCurrent, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
