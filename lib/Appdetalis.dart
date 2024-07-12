import 'package:guastions/Exampage.dart';
import 'package:guastions/guestions.dart';
class Appdetails{
  List<Questions>group=[
    Questions(
      t:  "الهداف التاريخي للدوري الاسباني هو ليونيل ميسي",
      i:  "lib/images/19_2021-637604926152595832-259.jpg",
      a:  true,
    ),
    Questions(
      t: "غانا كانت البلد الفائزة بكأس امم افريقيا لكرة القدم 2019",
      i: "lib/images/19_2022-637835572459489961-948.jpg",
      a: true,

    ),
    Questions(
      t:   "تأسس الاتحاد الدولي لكرة القدم (فيفا) في عام 1904 ",
      i:   "lib/images/271824_0.jpg",
      a:   false,

    ),

    Questions(
      t:   "اللاعب البرتغالي الشهير الي انتقل الى يوفنتوس في عام 2018 هو كريستيانو رونالدو",
      i:    "lib/images/images.jpg",
      a:    false,

    ),
    Questions(
      t:     "اللاعب الذي فاس بجائزة الكرة الذهبية في عام2020 هو روبرت ليفاندوسكي",
      i:      "lib/images/images (1).jpg",
      a:     true,
    ),
    Questions(
      t: "البطولة التي يتانفس فيها افضل فرق اوروبا في كرة القدم هي دوري ابطال اوروبا",
      i: "lib/images/images (2).jpg",
      a:  true,

    ),





  ];
  int guestiongroup=0;
  bool finsh() {
    if (guestionnumber >= group.length-1){
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    guestionnumber=0;
  }

}
