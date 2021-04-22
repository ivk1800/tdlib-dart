import '../tdapi.dart';

/// Contains a counter
class Count extends TdObject {
  Count({required this.count});

  /// [count] Count
  final int count;

  static const String CONSTRUCTOR = 'count';

  static Count? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Count(count: json['count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'count': this.count, '@type': CONSTRUCTOR};
}
