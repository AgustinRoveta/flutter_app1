import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isloading = false;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      // print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        //  add5();
        fetchData();
      }
    });
  }
//simulador de loading

  Future fetchData() async {
    if (isloading) return;

    isloading = true;

    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();

    isloading = false;

    setState(() {});
  }
  /*metodo para añadir 5 elementos al listado imagesIds,
   aca se toma el ultimo valor de dicho listado (imagesIds.last), este valor
   nos servira de referencia para empezar a sumar basados en él.
   luego creamos un iterable de 5 numeros, lo transformamos con el .map en 
   el numero siguiente al lastId y se agregan al listado ImagesIds
    */

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
    if (scrollController.position.pixels + 80 <=
        scrollController.position.maxScrollExtent) return;
    //limita el offset para que solo mueva para abajo si estoy al fondo (full bottom)
    scrollController.animateTo(scrollController.position.pixels + 100,
        //mueve un poco para abajo cuando cargan las imagenes del fondo (esto es el offset)
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2)); //esperamos 2 segundos
    final lastId = imagesIds.last;
    imagesIds.clear(); //limpia e listado
    imagesIds.add(lastId + 1); //tomamos el ultimo ID del listado
    add5();//creamos 5 registros nuevos
    
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.black,
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: [
              RefreshIndicator(
                color: AppTheme.primary,
                onRefresh: onRefresh,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: scrollController,
                    itemCount:
                        imagesIds.length, //no andaba xq estaba definido en 10
                    itemBuilder: (BuildContext context, int index) {
                      return FadeInImage(
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                          placeholder:
                              const AssetImage('assets/jar-loading.gif'),
                          image: NetworkImage(
                              'https://picsum.photos/500/300?image=${imagesIds[index]}'));
                    }),
              ),
              if (isloading)
                Positioned(
                    bottom: 25,
                    left: size.width * 0.5 - 30,
                    child: const _LoadingIcon())
            ],
          ),
        ));
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
