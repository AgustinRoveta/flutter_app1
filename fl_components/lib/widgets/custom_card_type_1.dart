import 'package:flutter/material.dart';

import '../themes/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
         const ListTile(
            title: Text('Título'),
            subtitle: Text('Tempor sit ullamco nulla ea fugiat sint proident aute fugiat minim laboris proident ad eu.'),
            leading: Icon(Icons.accessible_forward, color: AppTheme.primary,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              
              children: [
          
                TextButton(
                  onPressed: () { }, 
                  child: const Text('Cancel'),
                  
                  ),
                  TextButton(
                  onPressed: () { }, 
                  child: const Text('OK')
                  ),
          
              ],
            ),
          )


        ],
      ),

    );
  }
}