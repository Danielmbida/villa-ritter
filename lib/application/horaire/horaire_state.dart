part of 'horaire_cubit.dart';

@freezed
class HoraireState with _$HoraireState {
  const factory HoraireState.ouvert() = _Ouvert;
  const factory HoraireState.ferme() = _Ferme;
}
