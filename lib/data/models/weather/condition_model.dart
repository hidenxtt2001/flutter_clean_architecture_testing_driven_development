import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/condition.dart';

class ConditionModel extends Condition {
  const ConditionModel({
    String? text,
    String? icon,
    int? code,
  }) : super(text: text, icon: icon, code: code);

  factory ConditionModel.fromJson(Map<String, dynamic> json) => ConditionModel(
        text: json['text'] as String?,
        icon: json['icon'] as String?,
        code: json['code'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'icon': icon,
        'code': code,
      };

  @override
  List<Object?> get props => [text, icon, code];
}
