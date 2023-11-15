
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:quiz_app/Model.dart/flutter_ques_answ_class.dart';

import '../Screens/result_screen.dart';

class Animation_Que_Controll extends GetxController
    with GetSingleTickerProviderStateMixin {


  Animation_Que_Controll({required this.list});
  var list;

   late AnimationController _animationController;
   Animation? _animation;

  Animation? get animation => this._animation;

   late PageController _pageController;
  PageController get pageController => this._pageController;

  late List<Que_Ans_Class> _flutter_que_ans_list_animation = list;

  List<Que_Ans_Class> get flutter_que_ans_list_animation => this._flutter_que_ans_list_animation;

   bool _isanswered = false;
  bool get isanswered => this._isanswered;

  late String _selectedAns  ;
  String get selectedAns => this._selectedAns;

  late String _correctAns ;
  String get correctAns => this._correctAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  late int _numCorrectAns = 0;
  int get numCorrectAns => this._numCorrectAns;






  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController as Animation<double>)
      ..addListener(() {
        update();
      });
_animationController?.forward().whenComplete(nextquestion);

_pageController = PageController();

    super.onInit();
  }

  @override
  void onClose(){
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }


  void checkans(Que_Ans_Class question , String selectedanswer){
    _isanswered = true;
    _correctAns = question.Answer[0];
    _selectedAns = selectedanswer;
    if(_correctAns == _selectedAns){
      _numCorrectAns++;
    }
    _animationController.stop();
    update();

    Future.delayed(Duration(seconds: 1),(){
      nextquestion();

    });
  }
  void nextquestion() {
    if (_questionNumber.value != _flutter_que_ans_list_animation.length) {
      _isanswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      _animationController.reset();
      _animationController.forward().whenComplete(nextquestion);
    }
    else{
    Get.to(() => Result_Screen());}
  }


  void  updatequenum (int index){
    _questionNumber.value = index+1;
  }


}