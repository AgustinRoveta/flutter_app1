
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body:ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20,),
          CustomCardType2(name: 'Un perrito muy bonito', imageUrl: 'https://fastly.picsum.photos/id/237/800/600.jpg?hmac=KK6IftaxyI6scjoxeWUHr2AWr-7RQuExLH9vY4hSR6w',),
          CustomCardType1(),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',),
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://fastly.picsum.photos/id/19/2500/1667.jpg?hmac=7epGozH4QjToGaBf_xb2HbFTXoV5o8n_cYzB7I4lt6g',),
          SizedBox(height: 100,),
        ],
      )
    );
  }
}

