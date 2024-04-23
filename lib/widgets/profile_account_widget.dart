import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GeneralAccountInfoTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const GeneralAccountInfoTile({super.key, required this.title, required this.subTitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 10,
      leading: Padding(
        padding: const EdgeInsets.only(right: 4.0),
        child: Icon(icon),
      ),
      title:  Text(title,
          style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subTitle,
          style: Theme.of(context).textTheme.bodyMedium,),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}

class ProfileAccountInfoTile extends StatelessWidget {
   final String title;
  final IconData icon;
  const ProfileAccountInfoTile({super.key, required this.title, required this.icon}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w300, fontSize: 15, color: Colors.black87
                )),
          ),
           const Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),)
        ],
      ),
    );
  }
}