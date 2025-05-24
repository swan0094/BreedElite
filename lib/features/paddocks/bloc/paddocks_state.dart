part of 'paddocks_bloc.dart';

/// {@template paddocks_state}
/// PaddocksState description
/// {@endtemplate}
class PaddocksState extends Equatable {
  /// {@macro paddocks_state}
  const PaddocksState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current PaddocksState with property changes
  PaddocksState copyWith({
    String? customProperty,
  }) {
    return PaddocksState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template paddocks_initial}
/// The initial state of PaddocksState
/// {@endtemplate}
class PaddocksInitial extends PaddocksState {
  /// {@macro paddocks_initial}
  const PaddocksInitial() : super();
}
