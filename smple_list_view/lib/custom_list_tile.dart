import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, 
    required this.leading, 
    required this.title, 
    required this.subtitle, 
    required this.badgeChild, 
    required this.badgeLabel, 
    this.onTap});
final IconData leading;
final String title;
final String subtitle;
final Widget? badgeChild;
final Widget badgeLabel;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical:4,horizontal: 12), 
      
         child: Row(
      children: [
        Icon(leading),
        const SizedBox(width: 12,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(subtitle)
            ],
          ),
        ),
        Badge(label: badgeLabel,child: badgeChild,)
      
         ],
      ), ),
    );
  }
}