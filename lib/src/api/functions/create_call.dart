import '../tdapi.dart';

/// Creates a new call
/// Returns [CallId]
class CreateCall extends TdFunction {
  CreateCall(
      {required this.userId, required this.protocol, required this.isVideo});

  /// [userId] Identifier of the user to be called
  final int userId;

  /// [protocol] Description of the call protocols supported by the application
  final CallProtocol protocol;

  /// [isVideo] True, if a video call needs to be created
  final bool isVideo;

  static const String CONSTRUCTOR = 'createCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'protocol': this.protocol.toJson(),
        'is_video': this.isVideo,
        '@type': CONSTRUCTOR
      };
}
