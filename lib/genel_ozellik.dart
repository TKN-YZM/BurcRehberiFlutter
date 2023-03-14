import 'package:flutter/material.dart';
import 'package:main_project/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class Genel_Ozellikler extends StatefulWidget {
  Burc gelenBurc;
  Genel_Ozellikler(Burc this.gelenBurc){
    print(this.gelenBurc.burcDetay);
  }
  

  @override
  State<Genel_Ozellikler> createState() => _Genel_OzelliklerState();
}

class _Genel_OzelliklerState extends State<Genel_Ozellikler> {
  @override
  late PaletteGenerator _generator;
  Color appbarRengi=Colors.transparent;
  void initState() {
    super.initState();
    RengBul();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appbarRengi,
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(widget.gelenBurc.burcAdi+" ve Özellikleri"),
                centerTitle: true,
              background: Image.asset("images/${widget.gelenBurc.burcBuyukResim}",fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Text(widget.gelenBurc.burcDetay,style: Theme.of(context).textTheme.subtitle1,)
              ),
            ),
          )
        ],
      ),
    );
  }
  
  void RengBul() async{
    _generator=await PaletteGenerator.fromImageProvider(AssetImage("images/${widget.gelenBurc.burcBuyukResim}"));
    appbarRengi=_generator.dominantColor!.color;
    setState(() {
      
    });

  }
}