import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the total amount of data that was used for
/// calls
@immutable
class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  const NetworkStatisticsEntryCall({
    required this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
    required this.duration,
  });

  /// [networkType] Type of the network the data was sent through. Call
  /// setNetworkType to maintain the actual network type
  final NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  final int sentBytes;

  /// [receivedBytes] Total number of bytes received
  final int receivedBytes;

  /// [duration] Total call duration, in seconds
  final double duration;

  static const String constructor = 'networkStatisticsEntryCall';

  static NetworkStatisticsEntryCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatisticsEntryCall(
      networkType:
          NetworkType.fromJson(json['network_type'] as Map<String, dynamic>?)!,
      sentBytes: json['sent_bytes'] as int,
      receivedBytes: json['received_bytes'] as int,
      duration: (json['duration'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'network_type': networkType.toJson(),
        'sent_bytes': sentBytes,
        'received_bytes': receivedBytes,
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
