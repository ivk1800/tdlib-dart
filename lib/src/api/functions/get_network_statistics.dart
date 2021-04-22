import '../tdapi.dart';

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
}
