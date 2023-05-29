import 'package:equatable/equatable.dart';

sealed class AgifyEvent extends Equatable {
  const AgifyEvent();
}

final class AgifyNameChanged extends AgifyEvent {
  const AgifyNameChanged({
    required this.name,
    this.countryId,
  });

  final String name;
  final String? countryId;

  @override
  List<Object?> get props => [name, countryId];

  @override
  String toString() =>
      'AgifyTextChanged { text: $name - countryId: $countryId }';
}
