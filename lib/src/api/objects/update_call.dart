import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New call was created or information about a call was updated
@immutable
class UpdateCall extends Update {
  const UpdateCall({
    required this.call,
  });

  /// [call] New data about a call
  final Call call;

  static const String constructor = 'updateCall';

  static UpdateCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateCall(
      call: Call.fromJson(json['call'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call': call.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
