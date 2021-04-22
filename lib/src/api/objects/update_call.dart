import '../tdapi.dart';

/// New call was created or information about a call was updated
class UpdateCall extends Update {
  UpdateCall({required this.call});

  /// [call] New data about a call
  final Call call;

  static const String CONSTRUCTOR = 'updateCall';

  static UpdateCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateCall(call: Call.fromJson(json['call'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'call': this.call.toJson(), '@type': CONSTRUCTOR};
}
