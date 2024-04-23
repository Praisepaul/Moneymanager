import 'package:flutter/material.dart';
import 'package:moneymanager/data/userInfo.dart';
import 'package:moneymanager/widgets/profile_account_widget.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: const Icon(Icons.arrow_back_ios_sharp),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
            ),
            Icon(Icons.settings)
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/My_formal_pic.jpg'),
                      ),
                    ),
                    Text(userdata.name,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black87)),
                    Text(userdata.email,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: Colors.black87)),
                    const Chip(
                        label: Text("Edit Profile"),
                        backgroundColor: Color.fromARGB(255, 190, 231, 251),
                        avatar: Icon(Icons.edit)),
                  ],
                ),
                Expanded(
                  flex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("General",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.black87)
                                  ),
                                  const SizedBox(height: 10),

                                  const GeneralAccountInfoTile(
                                    title: "Address", 
                                    subTitle: "12-238 Valookkaran House, Byndoor, Udupi", 
                                    icon: Icons.location_on_sharp
                                    ),
                                    const GeneralAccountInfoTile(
                                    title: "My Wallet", 
                                    subTitle: "₹ 0.00", 
                                    icon: Icons.wallet
                                    ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                Expanded(
                  flex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Account",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.black87)
                                  ),
                                  const SizedBox(height: 4),

                                  const ProfileAccountInfoTile(
                                    title: "My Account", 
                                    icon: Icons.account_circle_outlined
                                    ),
                                  const SizedBox(height: 5),
                                    const ProfileAccountInfoTile(
                                    title: "Notifications", 
                                    icon: Icons.notifications_active_outlined
                                    ),
                                  const SizedBox(height: 5),

                                     const ProfileAccountInfoTile(
                                    title: "Privacy", 
                                    icon: Icons.lock_outline_rounded
                                    ),
                                  const SizedBox(height: 5),

                                     const ProfileAccountInfoTile(
                                    title: "About", 
                                    icon: Icons.info_outline_rounded
                                    ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
        );
  }
}