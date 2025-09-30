import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Encrypts group call data before sending them over network using tgcalls
/// Returns [Data]
@immutable
class EncryptGroupCallData extends TdFunction {
  const EncryptGroupCallData({
    required this.groupCallId,
    required this.dataChannel,
    required this.data,
    required this.unencryptedPrefixSize,
  });

  /// [groupCallId] Group call identifier. The call must not be a video chat
  final int groupCallId;

  /// [dataChannel] Data channel for which data is encrypted
  final GroupCallDataChannel dataChannel;

  /// [data] Data to encrypt
  final String data;

  /// [unencryptedPrefixSize] Size of data prefix that must be kept unencrypted
  final int unencryptedPrefixSize;

  static const String constructor = 'encryptGroupCallData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'data_channel': dataChannel.toJson(),
    'data': data,
    'unencrypted_prefix_size': unencryptedPrefixSize,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
