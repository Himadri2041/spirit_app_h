import 'package:flutter/material.dart';
import 'package:spirit_app/models/Helpdesk/contacts_data.dart';
import 'package:spirit_app/pages/home/widgets/row_widget.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/styles/colors.dart';


class HelpDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child:Expanded(child:
        Container(
        margin: EdgeInsets.only(top:40,left:20,right:20,bottom:40),
            height: 762,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColors.blank,
              border: Border.all(color: AppColors.primaryColor),
            ),
            child:
            SingleChildScrollView(child:
            Column(
            children: [
               Container(
               height: 47,
               decoration: BoxDecoration(color: Color(0xFFFE2A53)),
               padding: EdgeInsets.all(8.0),
                 child:Center(child: Image.asset(Assets.helpdesktitle)) ),

               const SizedBox(
                 height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  alignment: Alignment(-1,-1),
                  margin: EdgeInsets.only(left:17),
                  child:
                  Column(
                    children: [

                      Container(
                        alignment: Alignment(-1, -1),
                        child: const Text(
                          'Dial Spirit',
                          style:AppStyles.b2,
                        ),
                      ),
                     SizedBox(height: 10,),
                     Container(
                       alignment: Alignment(-1, -1),
                       margin: const EdgeInsets.only(left: 5),
                        child:
                         Column(
                              children: [
                              Contactrow(contactModel: ContactsData.DialSpirit[0]),
                              Contactrow(contactModel: ContactsData.DialSpirit[1]),
                              Contactrow(contactModel: ContactsData.DialSpirit[2]),
                              ],
                         )

                    ),

                      SizedBox(height: 20,),
                      Container(
                        alignment: Alignment(-1, -1),
                        child: const Text(
                          'Email Spirit',
                          style:AppStyles.b2,
                        ),
                      ),
                      SizedBox(height: 10,),

                      Container(
                        alignment: Alignment(-1, -1),
                        margin: const EdgeInsets.only(left: 5),
                        child: Contactrow(contactModel: ContactsData.Mail[0])
                      ),

                      SizedBox(height: 20,),
                      Container(
                        alignment: Alignment(-1, -1),
                        child: const Text(
                          'Important Contacts',
                          style:AppStyles.b2,
                        ),
                      ),
                      SizedBox(height: 10,),

                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child:
                          Column(
                            children: [
                              Contactrow(contactModel: ContactsData.ImpContacts[0]),
                              Contactrow(contactModel: ContactsData.ImpContacts[0]),
                              Contactrow(contactModel: ContactsData.ImpContacts[0]),


                            ],
                          )
                      ),

                    ],
                  )
                 ),


              ),

       ]
    ))
    ),
    ));
    }
    }