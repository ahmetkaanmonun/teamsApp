

import 'package:flutter/material.dart';
import 'package:my_app/utils/strings.dart';

import 'models/teams.dart';

class TeamCard extends StatelessWidget {

  static List<Teams> tumtakimlar = [];
  @override
  Widget build(BuildContext context) {
    tumtakimlar = veriKaynaginiHazirla();
    return Scaffold(
      
      appBar: AppBar(title: Text("Teams",style: TextStyle(fontSize: 21),),),
      body:GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
          itemCount: tumtakimlar.length,
          itemBuilder: (context,index) {
            return Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(

                border: Border.all(color: Colors.greenAccent,width: 5),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Text(tumtakimlar[index].teamName,style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
                    Image.asset("images/" + tumtakimlar[index].resim,height: 25,width: 25,),
                    Text(tumtakimlar[index].foundationDate,style: TextStyle(fontSize: 15),),
                    Text(tumtakimlar[index].coachName,style: TextStyle(fontSize: 13),),
                    Text(tumtakimlar[index].tactic,style: TextStyle(fontSize:11),),



                  ],


                ),),
              ),
            );
          }


      ),


      );
      
      

  }

  List<Teams> veriKaynaginiHazirla() {

    List<Teams> geciciTakim = [];

    for(int i = 0;i<12;i++){

      String resim = Strings.TAKIM_ADLARI[i].toLowerCase()+"${i+1}.png";

      Teams eklenecekTeam = Teams(Strings.TAKIM_ADLARI[i], Strings.KURULUS_TARIHLERI[i], Strings.MEVCUT_DIZILIS[i], Strings.KOC_ADI[i],resim);

      geciciTakim.add(eklenecekTeam);
    }
    return geciciTakim;



  }
}
