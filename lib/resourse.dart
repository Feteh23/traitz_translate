import 'package:flutter/material.dart';

void ShowDialog(BuildContext context, Function(String) onFlagSelected) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        height: MediaQuery.sizeOf(context).height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 30),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Use the callback to update the flag image
                      onFlagSelected('assets/america flag.jpg');
                      Navigator.pop(context); // Close the modal
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/america flag.jpg'),
                      radius: 20,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.05,
                  ),
                  Text(
                    'English',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                       // Use the callback to update the flag image
                      onFlagSelected('assets/france flag.jpg');
                      Navigator.pop(context); // Close the modal
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/france flag.jpg'),
                      radius: 20,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.05,
                  ),
                  Text(
                    'French',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}