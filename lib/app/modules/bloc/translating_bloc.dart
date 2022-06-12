import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/services/text_to_speech.dart';

part 'translating_bloc.freezed.dart';
part 'translating_event.dart';
part 'translating_state.dart';

class TranslatingBloc extends Bloc<TranslatingEvent, TranslatingState> {
  late TextToSpeech textToSpeechServices;

  TranslatingBloc() : super(const _Initial()) {
    on<_OnClickTranslate>((event, emit) {
      debugPrint("onClickTranslate");
    });
    on<_OnClickSound>((event, emit) {
      debugPrint("onClickSound");
      textToSpeechServices.speak(event.message);
    });
    on<_OnClickSuggestionSentence>((event, emit) {
      debugPrint("onClickSuggestionSentence");
    });
    on<_OnSelectOriginalLanguange>((event, emit) {
      debugPrint("onSelectOriginalLanguange");
    });
    on<_OnSelectListLanguanges>((event, emit) {
      debugPrint("onSelectListLanguanges");
    });
  }

  void initilize() {
    textToSpeechServices = TextToSpeech.initialize();
  }

  ValueNotifier<bool> showLoadingButton = ValueNotifier<bool>(false);
}
