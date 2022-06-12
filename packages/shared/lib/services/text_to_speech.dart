import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech {
  FlutterTts? _flutterTts = null;

  final double _volume = 0.5;
  final double _pitch = 1.0;
  final double _rate = 0.4;
  final String _engine = 'com.google.android.tts';
  final String _speechLanguange = 'en-US';

  FlutterTts get getFlutterTts => _flutterTts ?? FlutterTts();

  TextToSpeech.initialize() {
    _initializeEngine();
    _setAwaitOptions();
    _initilizeConfig();
  }

  Future _initializeEngine() async {
    await getFlutterTts.setEngine(_engine);
  }

  Future _initilizeConfig() async {
    await getFlutterTts.setVolume(_volume);
    await getFlutterTts.setSpeechRate(_rate);
    await getFlutterTts.setPitch(_pitch);
    await getFlutterTts.setLanguage(_speechLanguange);
    await getFlutterTts.isLanguageAvailable(_speechLanguange);
  }

  Future _setAwaitOptions() async {
    await getFlutterTts.awaitSpeakCompletion(true);
  }

  void speak(String message) {
    getFlutterTts.speak(message);
  }
}
