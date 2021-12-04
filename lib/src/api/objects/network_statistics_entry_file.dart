import '../tdapi.dart';

/// Contains information about the total amount of data that was used to send
/// and receive files
class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {
  NetworkStatisticsEntryFile(
      {this.fileType,
      required this.networkType,
      required this.sentBytes,
      required this.receivedBytes});

  /// [fileType] Type of the file the data is part of; pass null if the data
  /// isn't related to files
  final FileType? fileType;

  /// [networkType] Type of the network the data was sent through. Call
  /// setNetworkType to maintain the actual network type
  final NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  final int sentBytes;

  /// [receivedBytes] Total number of bytes received
  final int receivedBytes;

  static const String CONSTRUCTOR = 'networkStatisticsEntryFile';

  static NetworkStatisticsEntryFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatisticsEntryFile(
        fileType: FileType.fromJson(json['file_type']),
        networkType: NetworkType.fromJson(json['network_type'])!,
        sentBytes: json['sent_bytes'],
        receivedBytes: json['received_bytes']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_type': this.fileType?.toJson(),
        'network_type': this.networkType.toJson(),
        'sent_bytes': this.sentBytes,
        'received_bytes': this.receivedBytes,
        '@type': CONSTRUCTOR
      };
}
