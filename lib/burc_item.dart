import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main_project/burc.dart';
import 'package:main_project/genel_ozellik.dart';

class BurcItem extends StatelessWidget {

  final Burc listenilenBurc;
  const BurcItem({required this.listenilenBurc,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.asset("images/"+listenilenBurc.burcKucukResim,),
            title: Text(listenilenBurc.burcAdi,style: myTextStyle.headline5,),
            subtitle: Text(listenilenBurc.burcTarihi,style: myTextStyle.subtitle1,),
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.purple,),
            onTap: (){
              //Genel_Ozellikler(listenilenBurc);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Genel_Ozellikler(listenilenBurc)));
            },
          ),
        ),
      ),
    );
  }
}