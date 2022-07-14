import 'package:equatable/equatable.dart';

class Condition extends Equatable {
  final String? text;
  final String? icon;
  final int? code;

  const Condition({this.text, this.icon, this.code});

  @override
  List<Object?> get props => [text, icon, code];
}
