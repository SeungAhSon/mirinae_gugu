import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:mirinae_gugu/video/src/components/Questions.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Q_Widget/result.dart';



class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {

  late PageController _pageController;
  PageController get pageController => this._pageController;

  final List<Question> _questions = quiz1_1.map(
        (question) => Question(
        id: question['id'],
        options: question['options'],
        answer: question['answer_index'],
        VideoId: question['VideoId'],),
  ).toList();

  List<Question> get questions => this._questions;





  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;



  @override
  void onInit() {
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  void resetNumber(){
    _questionNumber.value = 1;
    _numOfCorrectAns = 0;
    _isAnswered = false;
  }

  void Video(Question question){
   _VideoId_ = question.VideoId as String?; //여긴 알빠아니고 null나옴

  }

  String? _VideoId_;
  String? get VideoId_ => _VideoId_;



  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;
    update();

    Future.delayed(Duration(seconds: 1), () {
      if (_questionNumber.value != _questions.length) {
        _isAnswered = false;
        _pageController.nextPage(
            duration: Duration(milliseconds: 100), curve: Curves.ease);
      } else {
        Get.off(ScoreScreen());
      }
    });
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}