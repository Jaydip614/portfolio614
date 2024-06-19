import 'package:flutter/material.dart';
import '../styles/mycolors.dart';
import '../styles/textstyles.dart';
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
      backgroundColor: MyColors.white01,
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
                      color: MyColors.black54,
                  ),
                  child: Image.asset("assets/images/profile614.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jaydip Baraiya",
                      style: boldTextStyle(),
                    ),
                    Text(" jaydipbaraiya614@gmail.com",
                      style: regularTextStyle(
                          fontSize: 14.5,
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
              iconColor: MyColors.black54,
              titleTextStyle: regularTextStyle(
                fontSize: 17,
              ),
            ),
        ],
      ),
    );
  }
}
