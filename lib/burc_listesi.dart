import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main_project/burc.dart';
import 'package:main_project/burc_item.dart';
import 'package:main_project/veriler.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar; 
  BurcListesi(){
    tumBurclar=veriKaynagiOlustur();
    //print(tumBurclar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burç Listesi")),
      body: Center(
        child: ListView.builder(itemBuilder: (context,index){
          return BurcItem(listenilenBurc: tumBurclar[index]);
        } , itemCount: tumBurclar.length,),
      ),
    );
  }


List<Burc> veriKaynagiOlustur() {
  List<Burc> gecici=[];  
  for(int i=0;i<12;i++){    
    var burcAdi=Strings.BURC_ADLARI[i];
    var burcTarihi=Strings.BURC_TARIHLERI[i];
    var burcDetay=Strings.BURC_GENEL_OZELLIKLERI[i];
    var burcKucukResim=Strings.BURC_ADLARI[i].toLowerCase()+"${i+1}.png";
    var burcBuyukResim=Strings.BURC_ADLARI[i].toLowerCase()+"_buyuk${i+1}.png";

    Burc eklenecekBurc=Burc(burcAdi,burcTarihi,burcDetay,burcKucukResim,burcBuyukResim);
    gecici.add(eklenecekBurc);

  }
  return gecici;
}
}