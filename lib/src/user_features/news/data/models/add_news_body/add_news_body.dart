import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_news_body.freezed.dart';
part 'add_news_body.g.dart';

@freezed
class AddNewsBody with _$AddNewsBody {
  factory AddNewsBody({
    String? subject,
    String? body,
    String? image,
  }) = _AddNewsBody;

  factory AddNewsBody.fromJson(Map<String, dynamic> json) =>
      _$AddNewsBodyFromJson(json);
}
