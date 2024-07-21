import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/mycolors.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';

class ReceivedMessages extends StatefulWidget {
  const ReceivedMessages({super.key});

  @override
  State<ReceivedMessages> createState() => _ReceivedMessagesState();
}

class _ReceivedMessagesState extends State<ReceivedMessages> {

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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Contacts").orderBy("time", descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          color: index % 2 == 0 ? MyColors.white01 : MyColors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,top: 2),
                                  child: Text(
                                    "${index + 1}.",
                                    style: boldTextStyle(fontSize: 15),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      buildInfoRow('Name : ', snapshot.data!.docs[index]['name']),
                                      const Divider(),
                                      buildInfoRow('Email : ', snapshot.data!.docs[index]['email']),
                                      const Divider(),
                                      buildInfoRow('Subject : ', snapshot.data!.docs[index]['subject']),
                                      const Divider(),
                                      buildInfoRow('Message : ', snapshot.data!.docs[index]['message']),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: snapshot.data!.docs.length,
                    ),
                  ),
                ],
              );
            }
            else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.hasError.toString()),
              );
            }
            else {
              return const Center(
                child: Text('No Data Found!'),
              );
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
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
