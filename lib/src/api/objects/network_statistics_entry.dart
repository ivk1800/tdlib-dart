import '../tdapi.dart';

/// Contains statistics about network usage
abstract class NetworkStatisticsEntry extends TdObject {
  const NetworkStatisticsEntry();

  static const String CONSTRUCTOR = 'networkStatisticsEntry';

  /// Inherited by:
  /// [NetworkStatisticsEntryFile]
  /// [NetworkStatisticsEntryCall]
  static NetworkStatisticsEntry? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case NetworkStatisticsEntryFile.CONSTRUCTOR:
        return NetworkStatisticsEntryFile.fromJson(json);
      case NetworkStatisticsEntryCall.CONSTRUCTOR:
        return NetworkStatisticsEntryCall.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
