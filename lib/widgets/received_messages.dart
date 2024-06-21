import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/mycolors.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';
import '../constants/contactme_data.dart';

class ReceivedMessages extends StatelessWidget {
  const ReceivedMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        title: const Text('My Messages', style: TextStyle(color: MyColors.white)),
        centerTitle: true,
        backgroundColor: MyColors.purple,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        iconTheme: const IconThemeData(
          color: MyColors.white,
        ),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < senders.length; i++)
            Container(
              color: i % 2 == 0 ? MyColors.white01 : MyColors.white,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10,top: 2),
                      child: Text(
                        "${i + 1}.",
                        style: boldTextStyle(fontSize: 15),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildInfoRow('Name : ', senders[i].name),
                          const Divider(),
                          buildInfoRow('Email : ', senders[i].email),
                          const Divider(),
                          buildInfoRow('Subject : ', senders[i].subject),
                          const Divider(),
                          buildInfoRow('Message : ', senders[i].message),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: boldTextStyle(fontSize: 15),
          ),
          Text(
            value,
            style: regularTextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
