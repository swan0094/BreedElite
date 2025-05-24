part of 'paddocks_bloc.dart';

abstract class PaddocksEvent extends Equatable {
  const PaddocksEvent();

  @override
  List<Object> get props => [];
}

/// {@template custom_paddocks_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomPaddocksEvent extends PaddocksEvent {
  /// {@macro custom_paddocks_event}
  const CustomPaddocksEvent();
}
