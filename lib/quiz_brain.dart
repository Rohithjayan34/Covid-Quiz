import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('വൈറസ് ബാധിച്ചിട്ടില്ലെങ്കിലും രോഗികളായ ആളുകളുമായി സമ്പർക്കം പുലർത്തുന്നത് ഒഴിവാക്കുക.', true),
    Question('കുറഞ്ഞത് 20 സെക്കൻഡ് നേരം സോപ്പും വെള്ളവും ഉപയോഗിച്ച് കൈ കഴുകുക. നിങ്ങളുടെ കൈകൾ ശുദ്ധീകരിക്കുക', true),
    Question('നിങ്ങൾ പതിവായി തൊടുന്നതെല്ലാം അണുവിമുക്തമാക്കേണ്ടതില്ല. ഡോർ‌ക്നോബുകൾ‌, ഹാൻ‌ഡിലുകൾ‌, ടിവി റിമോറ്റുകൾ‌, ഡ്രോയറുകൾ‌, വാഷ്‌ബേസിൻ‌ മുതൽ ടോയ്‌ലറ്റുകൾ‌ വരെ.', false),
    Question('എനിക്ക് പനി ഇല്ലെങ്കിൽ, എനിക്ക് കൊറോണ വൈറസ് ഇല്ല.', false),
    Question('വേനൽക്കാലത്ത് കാലാവസ്ഥ ചൂടുപിടിക്കുമ്പോൾ കൊറോണ വൈറസ് ഇല്ലാതാകാൻ സാധ്യതയുണ്ട്..', false),
    Question('ആരെങ്കിലും നിങ്ങളെ ചുമക്കുകയോ തുമ്മുകയോ ചെയ്താൽ മാത്രമേ നിങ്ങൾക്ക് കൊറോണ വൈറസ് ലഭിക്കൂ.', false),
    Question(
        'ധാരാളം വെള്ളം കുടിക്കുകയോ വെളുത്തുള്ളി പുരട്ടുകയോ ചെയ്യുന്നത് കൊറോണ വൈറസിനെ അകറ്റി നിർത്താൻ സഹായിക്കും.',
        false),
    Question(
        'അടിസ്ഥാനപരമായ യാതൊരു അവസ്ഥയും ഇല്ലാത്ത ഒരു ചെറുപ്പക്കാരനാണ് ഞാൻ, പക്ഷേ കൊറോണ വൈറസ് ഒഴിവാക്കാൻ ഞാൻ ഇനിയും നടപടികൾ കൈക്കൊള്ളണം.',
        true),
    Question(
        ' ഞാൻ ആൻറിബയോട്ടിക്കുകൾ കഴിക്കുകയാണെങ്കിൽ, കൊറോണ വൈറസ് ചികിത്സിക്കാൻ ഇത് സഹായിക്കും.',
        false),
    Question(
        'പൊതുഗതാഗതവും പൊതുസമ്മേളനവും ഇപ്പോൾ ഒഴിവാക്കണം.',
        true),
    Question('പ്രായമായവർക്ക് മാത്രമേ കൂടുതൽ അസുഖം വരൂ, ചെറുപ്പക്കാർക്ക് വിഷമിക്കേണ്ടതില്ല', false),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if(_questionNumber>=_questionBank.length-1){
      print('You have reached the End');
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _questionNumber=0;
  }
}
