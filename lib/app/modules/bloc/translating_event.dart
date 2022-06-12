part of 'translating_bloc.dart';

@freezed
class TranslatingEvent with _$TranslatingEvent {
  const factory TranslatingEvent.onClickTranslate() = _OnClickTranslate;
  const factory TranslatingEvent.onClickSound(String message) = _OnClickSound;
  const factory TranslatingEvent.onClickSuggestionSentence(String message) = _OnClickSuggestionSentence;
  const factory TranslatingEvent.onSelectOriginalLanguange() = _OnSelectOriginalLanguange;
  const factory TranslatingEvent.onSelectListLanguanges(List<String> listSelectLanguanges) = _OnSelectListLanguanges;
  
}