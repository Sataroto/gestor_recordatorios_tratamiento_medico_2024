import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestor_recordatorios_tratamiento_medico/modelview/home_view_model.dart';
import 'package:gestor_recordatorios_tratamiento_medico/utils/icons/icons.dart';
import 'package:gestor_recordatorios_tratamiento_medico/view/calendario.dart';
import 'package:gestor_recordatorios_tratamiento_medico/view/lista_dosis.dart';
import 'package:gestor_recordatorios_tratamiento_medico/view/lista_tratamientos.dart';
import 'package:get/get.dart';
import 'package:gestor_recordatorios_tratamiento_medico/utils/themes/theme_light.dart';

void main() => runApp(MaterialApp(
    theme: lightTheme,
    home: Home()
)
); //main para correr la app
var count = 0.obs;
class Home extends StatelessWidget{

  buildBottomNavigationMenu(context, hViewModel){
    return Obx( () => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
        child: BottomNavigationBar(
          showUnselectedLabels: true ,
          showSelectedLabels: true,
          onTap: hViewModel.changeTabIndex,
          currentIndex: hViewModel.tabIndex.value,
          backgroundColor: lightTheme.primaryColor,
          unselectedItemColor: unselectIconColor,
          selectedItemColor: Colors.white ,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  margin: maginIconNavBar,
                  child: tratamientoIconoLista,

                ),
                label: 'Tratamientos',
                //backgroundColor:
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: maginIconNavBar,
                child: calendarioIcono,
              ),
              label: 'Calendario',
              //backgroundColor:
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: maginIconNavBar,
                child: dosisIconoLista,
              ),
              label: 'Dosis',
              //backgroundColor:
            ),
          ],

        )
      )
    );
  }

  @override
  Widget build(BuildContext context){
    final homeViewModel hViewModel = Get.put(homeViewModel(), permanent: true );
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: buildBottomNavigationMenu(context, hViewModel),
          body: Obx( () => IndexedStack(
            index: hViewModel.tabIndex.value,
            children: [
              listaTratamientosView(),
              CalendarioView(),
              listaDosisView()
            ],
          )

          ),
        )
    );
  }
}
