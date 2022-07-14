import 'package:equatable/equatable.dart';

import 'current.dart';
import 'location.dart';

class Weather extends Equatable {
  final Location? location;
  final Current? current;

  const Weather({this.location, this.current});

  @override
  List<Object?> get props => [location, current];
}
