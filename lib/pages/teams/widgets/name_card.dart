import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class NameCard extends StatelessWidget {
  final name ;
  final position;
  const NameCard({super.key,required this.name, required this.position});



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),

      height: 132,
      width:306 ,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Row(
        children: [
          // Team member image on the left
          ClipRRect(// Rounded corners
            child: Image.asset(
              Assets.profileImage,// Replace with your image path
              height: 140, // Adjust height
              width: 140, // Adjust width for square image
              fit: BoxFit.fill, // Ensures the image covers the entire space
            ),
          ),
          const SizedBox(width: 16), // Space between image and text

          // Team member details (name and role) on the right
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: AppStyles.l1.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
             /* const SizedBox(height: 1), */// Space between name and role

              // Role
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,

                ),
                child: Text(
                  position,
                  style: AppStyles.m4.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
