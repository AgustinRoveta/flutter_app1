import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';

  class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key, required this.imageUrl,  this.name});
  final String imageUrl;
  final String? name;



  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 40,
      shadowColor: AppTheme.primary.withOpacity(0.8),
      child: Column(
        children:  [
           FadeInImage
          (image:  NetworkImage(imageUrl),
           placeholder: const AssetImage('assets/jar-loading.gif'),
           width: double.infinity,
           height:300,
           fit: BoxFit.cover,
           fadeInDuration: const Duration(milliseconds: 300),
           ),
           
           if (name != null)
           Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child:  Text(name ?? 'No title')
            )
        ],
      ),
    );
  }
}