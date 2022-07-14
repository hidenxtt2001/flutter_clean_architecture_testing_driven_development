import '../data/constants/constants.dart';

        

void printLog(Object parent,
    {required dynamic message, StackTrace? trace, dynamic error}) {
  assert((error != null) || (trace == null && error == null),
      "Error must be provided if an error happened");
  final mes = "[${parent.runtimeType}] $message";
  if (error != null) {
    return logger.e(
      mes,
      error,
      trace,
    );
  }
  logger.i(mes);
}
