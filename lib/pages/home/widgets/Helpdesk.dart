import 'package:flutter/material.dart';
import 'package:spirit_app/models/Helpdesk/contacts_data.dart';
import 'package:spirit_app/pages/home/widgets/row_widget.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/widgets/schedule_card.dart';
import 'package:spirit_app/models/events/events_data.dart';

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
                        height:180,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          //physics: const BouncingScrollPhysics(),
                          itemCount: ContactsData.DialSpirit.length,
                          itemBuilder: (context, index) {
                            final event = ContactsData.DialSpirit[index];
                           return Contactrow(contactModel: event);
                      },
                    ),
                  ),
                      SizedBox(height: 30,),
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
                        height: 40,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          //physics: const BouncingScrollPhysics(),
                          itemCount: ContactsData.Mail.length,
                          itemBuilder: (context, index) {
                            final event = ContactsData.Mail[index];
                            return Contactrow(contactModel: event);
                          },
                        ),
                      ),

                      SizedBox(height: 30,),
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
                        height: 80,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          //physics: const BouncingScrollPhysics(),
                          itemCount: ContactsData.ImpContacts.length,
                          itemBuilder: (context, index) {
                            final event = ContactsData.ImpContacts[index];
                            return Contactrow(contactModel: event);
                          },
                        ),
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