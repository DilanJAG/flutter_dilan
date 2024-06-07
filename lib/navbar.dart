import 'package:flutter/material.dart';
import 'package:flutter_07/compras.dart';
import 'package:flutter_07/configuracion.dart';
import 'package:flutter_07/ofertas.dart';
import 'package:flutter_07/perfil.dart';
import 'package:flutter_07/main.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
          accountName: const Text("Dilan"),
          accountEmail: const Text("djg.aroca@yavirac.edu.ec"),
          currentAccountPicture: CircleAvatar(child: ClipOval(child: Image.asset('images/imagen1.jpeg'),),),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title:const Text("Inicio"),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> const MyApp()));
            }
          ),
          ListTile(
            leading: const Icon(Icons.account_box),
            title:const Text("Perfil"),
            onTap: (){
              //Navigator.push(context,MaterialPageRoute(builder: (context)=>const PerfilPage()));
            }
          ),
          ListTile(
            leading: const Icon(Icons.shop_outlined),
            title:const Text("Compras"),
            onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> ComprasPage()));
            }
          ),
          ListTile(
            leading: const Icon(Icons.local_offer),
            title:const Text("Ofertas"),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const DescripcionPage()));
            }
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title:const Text("Registrate"),
            onTap: (){
              
            }
          )

        ],
      ),
    );
  }
}