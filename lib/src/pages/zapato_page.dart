import 'package:flutter/material.dart';
import 'package:shoes/src/helpers/helpers.dart';
import 'package:shoes/src/widgets/agregar_carrito.dart';
import 'package:shoes/src/widgets/custom_appbar.dart';
import 'package:shoes/src/widgets/zapato_desc.dart';
import 'package:shoes/src/widgets/zapato_size.dart';
// import 'package:shoes/src/widgets/custom_widgets.dart';


class ZapatoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    cambiarStatusDark();


    return Scaffold(
      // body: CustomAppBar( texto: 'For you' )
      // body: ZapatoSizePreview(),
      body: Column(
        children: <Widget>[
          CustomAppBar( texto: 'For you' ),
          const SizedBox( height: 20),

          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[

                    Hero(
                      tag: 'zapato-1',
                      child: ZapatoSizePreview()
                    ),

                    const ZapatoDescripcion(
                      titulo: 'Nike Air Max 720',
                      descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),

                ],
              ),
            )
          ),

          AgregarCarritoBoton( monto: 180.0 )

        ],
      ),
   );
  }
}