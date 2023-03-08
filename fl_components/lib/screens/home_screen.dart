import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
final menuOptions=  AppRoutes.menuOptions;



    return  Scaffold(
      appBar: AppBar(
        title:const Text('Componentes Flutter'),

      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title: Text(menuOptions[index].name,),
          leading: Icon(menuOptions[index].icon, color:AppTheme.primary,),
          onTap: () {
            //forma de navegar entre screens N°1
           // final route= MaterialPageRoute(
           //   builder: (context) => const ListView1Screen()//,
           //   );
           // Navigator.push(context, route);

           //forma de navegar entre screens N°2
            Navigator.pushNamed(context, menuOptions[index].route);

           //Ruta no existente Navigator.pushNamed(context, 'card2');
          },
        ),
        separatorBuilder: ( _ , __) => const Divider(),
        itemCount: menuOptions.length
        )
    );
  }
}