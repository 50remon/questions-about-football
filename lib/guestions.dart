import 'package:guastions/Exampage.dart';
class Questions {
  late String Text;
  late String image;
  late bool answer;
  Questions({required String t,required String i,required bool a}){
    Text=t;
    image=i;
    answer=a;
}
}