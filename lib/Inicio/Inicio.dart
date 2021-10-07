///Package imports
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:pruebaslabcode/Utils/Constantes.dart';
import 'package:pruebaslabcode/data/informacions.dart';
import 'package:pruebaslabcode/models/Informacion.dart';

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

  late List<Informacion> informs;
  int? sortColumnIndex;
  bool isAscending = false;

  final columns = [
    '',
    fFacturacion,
    cCostosOperativos,
    nNivelEjecucionPresupuesto,
    nNumeroOperaciones,
    cCantGeneradaM
  ];

  @override
  void initState() {
    // TODO: implement initState

    this.informs = List.of(allUsers);
    super.initState();
  }

  // void crearInformacion() {
  //   data.add(
  //     Informacion(
  //       name: 'Adquisicion Planta Chile',
  //       facturacion: 10,
  //       costosOperativos: 15,
  //       nivelEjecucion: 20,
  //       numeroOperarios: 20,
  //       cantidadEnergiaGenerada: 20,
  //     ),
  //   );
  //   data.add(
  //     Informacion(
  //       name: 'Operación planta de energía solar en USA',
  //       facturacion: 10,
  //       costosOperativos: 30,
  //       nivelEjecucion: 40,
  //       numeroOperarios: 50,
  //       cantidadEnergiaGenerada: 60,
  //     ),
  //   );
  //   data.add(
  //     Informacion(
  //       name: 'Operación planta de energía solar en Argentina',
  //       facturacion: 10,
  //       costosOperativos: 30,
  //       nivelEjecucion: 40,
  //       numeroOperarios: 50,
  //       cantidadEnergiaGenerada: 60,
  //     ),
  //   );
  //   data.add(
  //     Informacion(
  //       name: 'Operación planta de energía solar en Colombia',
  //       facturacion: 10,
  //       costosOperativos: 30,
  //       nivelEjecucion: 40,
  //       numeroOperarios: 50,
  //       cantidadEnergiaGenerada: 60,
  //     ),
  //   );
  //   data.add(
  //     Informacion(
  //       name: 'Operación planta de energía solar en Brasil',
  //       facturacion: 10,
  //       costosOperativos: 30,
  //       nivelEjecucion: 40,
  //       numeroOperarios: 50,
  //       cantidadEnergiaGenerada: 60,
  //     ),
  //   );

  //   setState(() {});

  //   data.forEach((element) {
  //     debugPrint(element.name);
  //   });
  // }

  /// widget
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kColorFondoSplash,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // if (informs.length > 0) buildDataTable(),
          if (informs.length > 0)
            Container(
              margin: EdgeInsets.symmetric(horizontal: dDefaultSpacing),
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: kPrimaryColor, width: 0.2),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 2,
                  vertical: 5,
                ),
                child: DataTable2(
                  columnSpacing: 0.5,
                  horizontalMargin: 4,
                  minWidth: 300,

                  columns: getColumns(columns),
                  // [
                  //   DataColumn2(
                  //     label: Text(
                  //       '',
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //     size: ColumnSize.L,
                  //   ),
                  //   DataColumn(
                  //     label: Text(
                  //       fFacturacion,
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //   ),
                  //   DataColumn(
                  //     label: Text(
                  //       cCostosOperativos,
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //   ),
                  //   DataColumn(
                  //     label: Text(
                  //       nNivelEjecucionPresupuesto,
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //   ),
                  //   DataColumn(
                  //     label: Text(
                  //       nNumeroOperaciones,
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //   ),
                  //   DataColumn(
                  //     label: Text(
                  //       cCantGeneradaM,
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //   ),
                  // ],
                  rows: List<DataRow>.generate(
                    informs.length,
                    (index) => DataRow(
                      cells: [
                        DataCell(
                          Container(
                            width: double.infinity,
                            child: Text(
                              informs[index].name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            width: double.infinity,
                            color: _getCellBackgroundColor(
                                informs[index].facturacion),
                            child: Text(
                              informs[index].facturacion.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      informs[index].facturacion),
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            width: double.infinity,
                            color: _getCellBackgroundColor(
                                informs[index].costosOperativos),
                            child: Text(
                              informs[index].costosOperativos.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      informs[index].costosOperativos),
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            width: double.infinity,
                            color: _getCellBackgroundColor(
                                informs[index].nivelEjecucion),
                            child: Text(
                              informs[index].nivelEjecucion.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      informs[index].nivelEjecucion),
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            width: double.infinity,
                            color: _getCellBackgroundColor(
                                informs[index].numeroOperarios),
                            child: Text(
                              informs[index].numeroOperarios.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      informs[index].numeroOperarios),
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            width: double.infinity,
                            color: _getCellBackgroundColor(
                                informs[index].cantidadEnergiaGenerada),
                            child: Text(
                              informs[index].cantidadEnergiaGenerada.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      informs[index].cantidadEnergiaGenerada),
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          SizedBox(height: dDefaultSpacing),
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          color: kLightGrey,
                          child: Text(
                            "0 - 20",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          color: kLightGreen,
                          child: Text(
                            "21 - 40",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          color: kMidGreen,
                          child: Text(
                            "41 - 60",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          color: kDarkGreen,
                          child: Text(
                            "61 - 80",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          color: kDarkerGreen,
                          child: Text(
                            "81 - >100",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
                          kLightGrey,
                          kLightGreen,
                          kMidGreen,
                          kDarkGreen,
                          kDarkerGreen,
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

  Widget buildDataTable() {
    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(informs),
    );
  }

  List<DataRow> getRows(List<Informacion> informs) =>
      informs.map((Informacion inform) {
        final cells = [
          inform.name,
          inform.facturacion,
          inform.costosOperativos,
          inform.nivelEjecucion,
          inform.numeroOperarios,
          inform.cantidadEnergiaGenerada
        ];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn2(
            label: Text(
              column,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            size: ColumnSize.M,
            onSort: onSort,
          ))
      .toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      informs.sort((user1, user2) => compareString(
          ascending, '${user1.facturacion}', '${user2.facturacion}'));
    } else if (columnIndex == 1) {
      informs.sort((user1, user2) => compareString(
          ascending, '${user1.costosOperativos}', '${user2.costosOperativos}'));
    } else if (columnIndex == 2) {
      informs.sort((user1, user2) => compareString(
          ascending, '${user1.nivelEjecucion}', '${user2.nivelEjecucion}'));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);

  /// Returns the cell  text color based on the cell background color
  Color _getCellTextColor(Color backgroundColor) {
    if (backgroundColor == kDarkGreen || backgroundColor == kDarkerGreen) {
      return Colors.white;
    }

    return Colors.black;
  }

  Color _getCellBackgroundColor(int numero) {
    if (numero == 0) {
      return Colors.white;
    } else if (numero > 0 && numero <= 20) {
      return kLightGrey;
    } else if (numero > 20 && numero <= 40) {
      return kLightGreen;
    } else if (numero > 40 && numero <= 60) {
      return kMidGreen;
    } else if (numero > 60 && numero <= 80) {
      return kDarkGreen;
    } else if (numero > 80 && numero <= 100) {
      return kDarkerGreen;
    } else {
      return kDarkerGreen;
    }
  }
}
