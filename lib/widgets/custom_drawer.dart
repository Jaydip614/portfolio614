import 'package:flutter/material.dart';
import '../constants/navbar_data.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.onNavItemTap,
  });
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFF2F3F5),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 12,),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                  ),
                  child: Image.asset("assets/images/profile614.png", fit: BoxFit.fill,),
                ),
                const SizedBox(width: 12,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jaydip Baraiya",
                      style: TextStyle(
                          fontSize: 21,
                          fontFamily: "SourceSans3-Bold",
                          color: Colors.black,
                      ),
                    ),
                    Text(" jaydipbaraiya614@gmail.com",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "SourceSans3-Regular",
                          // fontWeight: FontWeight.w500,
                          color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          for(int i=0; i<navIcons.length; i++)
            ListTile(
              onTap: () {
                onNavItemTap(i);
              },
              contentPadding: const EdgeInsets.only(left: 20),
              leading: Icon(navIcons[i], size: 25,),
              title: Text(navTitles[i]),
              iconColor: Colors.black54,
              titleTextStyle: const TextStyle(
                  fontSize: 17,
                  fontFamily: "SourceSans3-Regular",
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
