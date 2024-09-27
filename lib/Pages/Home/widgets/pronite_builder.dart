import 'package:flutter/material.dart';
import 'package:spirit_app/Pages/Home/widgets/Pronite_card.dart';
import 'package:spirit_app/models/ProNite/Pronite_data.dart';
class ProniteBuilder extends StatefulWidget {
  const ProniteBuilder({super.key});

  @override
  State<ProniteBuilder> createState() => _ProniteBuilderState();
}

class _ProniteBuilderState extends State<ProniteBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin:EdgeInsets.only(left: 18),
      height: 200,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: Pronite().AllPronite.length,
          itemBuilder: (context,index){
            final pronite = Pronite().AllPronite[index];
            return ProniteCard(proniteModel: pronite);
          }

      ),
    );
  }
}
