///Package imports
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:pruebaslabcode/Utils/Constantes.dart';
import 'package:pruebaslabcode/models/Informacion.dart';

/// Colors used as background color for various month cells in this sample
const Color _kLightGrey = Color.fromRGBO(238, 238, 238, 1);
const Color _kLightGreen = Color.fromRGBO(198, 228, 139, 1);
const Color _kMidGreen = Color.fromRGBO(123, 201, 111, 1);
const Color _kDarkGreen = Color.fromRGBO(35, 154, 59, 1);
const Color _kDarkerGreen = Color.fromRGBO(25, 97, 39, 1);

/// Widget of heat map calendar
class Inicio extends StatelessWidget {
  static String routeName = '/inicio';
  @override
  Widget build(BuildContext context) {
    return InicioHome();
  }
}

class InicioHome extends StatefulWidget {
  @override
  _InicioHomeState createState() => _InicioHomeState();
}

class _InicioHomeState extends State<InicioHome>
    with SingleTickerProviderStateMixin {
  final ScrollController controller = ScrollController();

  List<Informacion> data = <Informacion>[];
  @override
  void initState() {
    // TODO: implement initState

    crearInformacion();

    debugPrint(data.length.toString());
    super.initState();
  }

  void crearInformacion() {
    data.add(
      Informacion(
        name: 'Adquisicion Planta Chile',
        facturacion: 10,
        costosOperativos: 15,
        nivelEjecucion: 20,
        numeroOperarios: 20,
        cantidadEnergiaGenerada: 20,
      ),
    );
    data.add(
      Informacion(
        name: 'Operación planta de energía solar en USA',
        facturacion: 10,
        costosOperativos: 30,
        nivelEjecucion: 40,
        numeroOperarios: 50,
        cantidadEnergiaGenerada: 60,
      ),
    );

    data.forEach((element) {
      debugPrint(element.name);
    });
  }

  /// widget
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kColorFondoSplash,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // DataTable2(
          //   columnSpacing: 12,
          //   horizontalMargin: 2,
          //   minWidth: 300,
          //   columns: [
          //     DataColumn2(
          //       label: Text(
          //         '',
          //         style: TextStyle(
          //           color: kColorMisPuntos,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //       size: ColumnSize.L,
          //     ),
          //     DataColumn(
          //       label: Text(
          //         nNombre,
          //         style: TextStyle(
          //           color: kColorMisPuntos,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //     ),
          //     DataColumn(
          //       label: Text(
          //         nNombre,
          //         style: TextStyle(
          //           color: kColorMisPuntos,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //     ),
          //     DataColumn(
          //       label: Text(
          //         nNombre,
          //         style: TextStyle(
          //           color: kColorMisPuntos,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //     ),
          //     DataColumn(
          //       label: Text(
          //         nNombre,
          //         style: TextStyle(
          //           color: kColorMisPuntos,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //     ),
          //     DataColumn(
          //       label: Text(
          //         nNombre,
          //         style: TextStyle(
          //           color: kColorMisPuntos,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //     ),
          //   ],
          //   rows: List<DataRow>.generate(
          //     data.length,
          //     (index) => DataRow(
          //       cells: [
          //         DataCell(
          //           Container(
          //             color: Colors.green,
          //             child: Text(
          //               data[index].name,
          //               style: const TextStyle(
          //                 color: kColorMisPuntos,
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //           ),
          //         ),
          //         DataCell(
          //           Container(
          //             color: Colors.green,
          //             child: Text(
          //               data[index].name,
          //               style: const TextStyle(
          //                 color: kColorMisPuntos,
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //           ),
          //         ),
          //         DataCell(
          //           Container(
          //             color: Colors.green,
          //             child: Text(
          //               data[index].name,
          //               style: const TextStyle(
          //                 color: kColorMisPuntos,
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //           ),
          //         ),
          //         DataCell(
          //           Container(
          //             color: Colors.green,
          //             child: Text(
          //               data[index].name,
          //               style: const TextStyle(
          //                 color: kColorMisPuntos,
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //           ),
          //         ),
          //         DataCell(
          //           Container(
          //             color: Colors.green,
          //             child: Text(
          //               data[index].name,
          //               style: const TextStyle(
          //                 color: kColorMisPuntos,
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            width: screenWidth,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        mMenos,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        mMas,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[
                          _kLightGrey,
                          _kLightGreen,
                          _kMidGreen,
                          _kDarkGreen,
                          _kDarkerGreen,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Returns the cell  text color based on the cell background color
  Color _getCellTextColor(Color backgroundColor) {
    if (backgroundColor == _kDarkGreen || backgroundColor == _kDarkerGreen) {
      return Colors.white;
    }

    return Colors.black;
  }

// Container(
//       decoration: BoxDecoration(
//           color: backgroundColor,
//           border: Border.all(color: defaultColor, width: 0.5)),
//       child: Center(
//         child: Text(
//           details.date.day.toString(),
//           style: TextStyle(color: _getCellTextColor(backgroundColor)),
//         ),
//       ),
//     );

  Color _getMonthCellBackgroundColor(DateTime date) {
    if (date.month.isEven) {
      if (date.day % 6 == 0) {
        // 6, 12, 18, 24, 30
        return _kDarkerGreen;
      } else if (date.day % 5 == 0) {
        // 5, 10, 15, 20, 25
        return _kMidGreen;
      } else if (date.day % 8 == 0 || date.day % 4 == 0) {
        //  4, 8, 16, 24, 28
        return _kDarkGreen;
      } else if (date.day % 9 == 0 || date.day % 3 == 0) {
        // 3, 9, 18, 21, 27
        return _kLightGrey;
      } else {
        // 1, 2, 7, 11, 13, 19, 22, 23, 26, 29
        return _kLightGreen;
      }
    } else {
      if (date.day % 6 == 0) {
        // 6, 12, 18, 24, 30
        return _kLightGreen;
      } else if (date.day % 5 == 0) {
        // 5, 10, 15, 20, 25
        return _kLightGrey;
      } else if (date.day % 8 == 0 || date.day % 4 == 0) {
        //  4, 8, 16, 24, 28
        return _kMidGreen;
      } else if (date.day % 9 == 0 || date.day % 3 == 0) {
        // 3, 9, 18, 21, 27
        return _kDarkerGreen;
      } else {
        // 1, 2, 7, 11, 13, 19, 22, 23, 26, 29
        return _kDarkGreen;
      }
    }
  }
}
