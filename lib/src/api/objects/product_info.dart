import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a product that can be paid with invoice
@immutable
class ProductInfo extends TdObject {
  const ProductInfo({
    required this.title,
    required this.description,
    this.photo,
  });

  /// [title] Product title
  final String title;

  /// param_[description] Product description
  final FormattedText description;

  /// [photo] Product photo; may be null
  final Photo? photo;

  static const String constructor = 'productInfo';

  static ProductInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProductInfo(
      title: json['title'] as String,
      description:
          FormattedText.fromJson(json['description'] as Map<String, dynamic>?)!,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'description': description.toJson(),
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
