import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:guastions/Appdetalis.dart';
import 'package:guastions/guestions.dart';
import 'package:guastions/Exampage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class Exampagee extends StatefulWidget {

  @override
  State<Exampagee> createState() => _ExampageeState();
}

/*List<String>guestions=[
  "الهداف التاريخي للدوري الاسباني هو ليونيل ميسي",
  "غانا كانت البلد الفائزة بكأس امم افريقيا لكرة القدم 2019",


  "تأسس الاتحاد الدولي لكرة القدم (فيفا) في عام 1904 ",

  "اللاعب البرتغالي الشهير الي انتقل الى يوفنتوس في عام 2018 هو كريستيانو رونالدو",

  "اللاعب الذي فاس بجائزة الكرة الذهبية في عام2020 هو روبرت ليفاندوسكي",
  "البطولة التي يتانفس فيها افضل فرق اوروبا في كرة القدم هي دوري ابطال اوروبا",


];
List<String> guestionsimage=[
  "lib/images/19_2021-637604926152595832-259.jpg",
  "lib/images/19_2022-637835572459489961-948.jpg",
  "lib/images/271824_0.jpg",
  "lib/images/images.jpg",
  "lib/images/images (1).jpg",
  "lib/images/images (2).jpg",
];
List<bool> answers=[
  true,
  true,
  false,
  false,
  true,
  true,
  true,
];*/
Appdetails appdetails= Appdetails();
Questions guest=Questions(
     t:   "الهداف التاريخي للدوري الاسباني هو ليونيل ميسي",
     i:   "lib/images/19_2021-637604926152595832-259.jpg",
     a:   true
);
 int guestionnumber=0;


class _ExampageeState extends State<Exampagee> {
  int resultanswer=0;
  List<Widget> answerresult=[];
  void checkAnswer(bool whatuserpickt)
  {

    bool corectanswer= appdetails.group[guestionnumber].answer;
    setState(() {
      if(whatuserpickt==corectanswer){
        resultanswer++;
        answerresult.add(
            Icon(Icons.thumb_up,color: Colors.green,),
        );
        SizedBox(width: 5,);
      }
      else{
        answerresult.add(
            Icon(Icons.thumb_down,color: Colors.red,)

        );
        SizedBox(width: 5,);
      }



      if(appdetails.finsh()==true){
        Alert(
          context: context,
          title: "انتهاء الأختبار",
          desc: "لقد اجبت على$resultanswer من ضمن 6اسئلة ",
          buttons: [
            DialogButton(
              child: Text(
                "ابداء من جديد",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        appdetails.reset();
        answerresult=[];
        resultanswer=0;
      }else{
        appdetails.guestiongroup++;
        guestionnumber++;
      }



    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(15),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children:answerresult,

            ),
            SizedBox(height: 10,),
            Expanded(
              flex: 5,
              child:Column(
                children: [
                  Image.asset(appdetails.group[guestionnumber].image,width: double.infinity,),
                  Text(
                    appdetails.group[guestionnumber].Text,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                    ),

                  ),


                ],
              ),
            ),
            Expanded(
              child:MaterialButton(
                  color: Colors.indigo,
                  child: Text("صح",style: TextStyle(fontSize: 20 ,color: Colors.white ),),
                  onPressed: (){
                   checkAnswer(true);

                  }
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child:MaterialButton(
                  color: Colors.deepOrange,
                  child: Text("خطاء",style: TextStyle(fontSize: 20 ,color: Colors.white ),),
                  onPressed: (){
                   checkAnswer(false);

                  }
              ),
            ),



          ],
        ),
    );
  }
}
