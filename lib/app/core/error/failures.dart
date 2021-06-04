import 'package:equatable/equatable.dart';

abstract class IFailure extends Equatable {
  final String message;

  const IFailure({this.message = ''});

  @override
  List<Object> get props => [
        message,
      ];
}

class Failure extends IFailure {
  const Failure({
    String message = 'Houve um erro no servidor',
  }) : super(message: message);
}
