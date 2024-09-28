import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/outline.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Merch extends StatefulWidget {
  const Merch({super.key});

  @override
  State<Merch> createState() => _MerchState();
}

class _MerchState extends State<Merch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar:AppBar(centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.backgroundColor,
          title: SvgPicture.asset(Assets.merchtitle, height: 20.85),
        ),
        body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(Assets.backgroundFrame,
                    fit: BoxFit.cover),
              ),
              SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
// get your merch
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text('Grab your official SPIRIT 24 merch now! Pre orders open!',
                              style: AppStyles.l1,
                            ),
                          ),
                        ),

                        SizedBox(height:20),
                        //cart option
                        Row(
                          children: [
                            Expanded(child: Container())  ,
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  height:40,
                                  child:Image.asset(Assets.cartback),),
                                IconButton(onPressed: (){}, icon:ImageIcon( AssetImage(Assets.cart),
                                    color:AppColors.Accent2,
                                    size:24) ),
                              ],
                            ),],),

                        SizedBox(height:20),
//merch view

                        Center(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                  children: [
                                    Container(
                                      width: 327.36,
                                      height: 435.57,
                                      decoration: Outline.red_outline,
                                      child:Stack(
                                        alignment:Alignment.center ,
                                        children: [
                                          Container(
                                            width: 298.06,
                                            height: 299.71,
                                            child: Image.asset(Assets.merchwhite,
                                              fit: BoxFit.cover,),

                                          ),
                                          Image.asset(Assets.merchlogo),
                                        ],),
                                    ),


                                    //name of tee
                                    Column(
                                        children: [
                                          Row(
                                            children: [
                                              Stack(
                                                alignment:Alignment.center
                                                ,children: [
                                                Image.asset(Assets.rectangle),
                                                Text(
                                                    'Logo Pink Blue Tee (White)',
                                                    style:AppStyles.m2)
                                              ],),
                                              //Expanded(child: Container())

                                            ],
                                          ),
                                          SizedBox(height:10),
                                          //price of tee
                                          Row(
                                            children: [
                                              Stack(

                                                alignment:Alignment.center,
                                                children: [

                                                  Image.asset(Assets.rectangley),
                                                  Text(
                                                      '₹499/-',

                                                      style:AppStyles.m3),
                                                ],),
                                              // Expanded(child: Container())
                                            ],)])
                                  ]
                              ),
                            ],
                          ),
                        ),
                        //pre order
                        ElevatedButton(onPressed:(){} , child:
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                          child:

                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(left: 18, right: 18),

                              width: 320,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('PRE-ORDER',
                                    textAlign: TextAlign.center,
                                    style: AppStyles.m4,),
                                ],
                              ),
                            ),
                          ),
                        ) ,
                            style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(AppColors.Accent2),
                              shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.zero)),
                            )
                        )]
                  )
              ) ]
        )

    );
  }
}
