part of 'translating_bloc.dart';

@freezed
class TranslatingState with _$TranslatingState {
  const factory TranslatingState.initial() = _Initial;
  const factory TranslatingState.failure(String message) = _Failure;
  const factory TranslatingState.noInternetConnection(String message) = _NoInternetConnection;
}
