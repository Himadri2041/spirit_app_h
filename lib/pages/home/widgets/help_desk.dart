import 'package:flutter/material.dart';
import 'package:spirit_app/models/helpdesk/contacts_data.dart';
import 'package:spirit_app/models/helpdesk/contacts_model.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/styles/colors.dart';

class HelpDialog extends StatelessWidget {
  const HelpDialog({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.7,
      width: size.width * 0.8,
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 40),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.blank,
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: AppColors.primaryColor),
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Image.asset(Assets.helpdesktitle),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              alignment: const Alignment(-1, -1),
              margin: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  Container(
                    alignment: const Alignment(-1, -1),
                    child: const Text(
                      'Dial Spirit',
                      style: AppStyles.b2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                      alignment: const Alignment(-1, -1),
                      margin: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          contactRow(contactModel: ContactsData.spiritContacts[0]),
                          contactRow(contactModel: ContactsData.spiritContacts[1]),
                          contactRow(contactModel: ContactsData.spiritContacts[2]),
                        ],
                      )),
                  const SizedBox(height: 16),
                  Container(
                    alignment: const Alignment(-1, -1),
                    child: const Text(
                      'Email Spirit',
                      style: AppStyles.b2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    alignment: const Alignment(-1, -1),
                    margin: const EdgeInsets.only(left: 5),
                    child: contactRow(
                      contactModel: ContactsData.mail[0],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    alignment: const Alignment(-1, -1),
                    child: const Text(
                      'Important Contacts',
                      style: AppStyles.b2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        contactRow(contactModel: ContactsData.impContacts[0]),
                        contactRow(contactModel: ContactsData.impContacts[0]),
                        contactRow(contactModel: ContactsData.impContacts[0]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contactRow({required ContactModel contactModel}) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          contactModel.icon,
          const SizedBox(width: 8),
          Text(contactModel.contact, style: AppStyles.h1),
        ],
      ),
    );
  }
}
