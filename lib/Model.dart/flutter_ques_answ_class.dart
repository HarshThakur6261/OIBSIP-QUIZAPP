class Que_Ans_Class{
 const Que_Ans_Class(this.Text,this.Answer);
  final String Text;
  final List<String> Answer;

  List<String> getSuffled(){
   final ShuffledList = List.of(Answer);ShuffledList.shuffle();
   return ShuffledList;
  }

  

}