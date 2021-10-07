///Package imports
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:pruebaslabcode/Utils/Constantes.dart';
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

  List<Informacion> data = <Informacion>[];
  @override
  void initState() {
    // TODO: implement initState

    crearInformacion();
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
    data.add(
      Informacion(
        name: 'Operación planta de energía solar en Argentina',
        facturacion: 10,
        costosOperativos: 30,
        nivelEjecucion: 40,
        numeroOperarios: 50,
        cantidadEnergiaGenerada: 60,
      ),
    );
    data.add(
      Informacion(
        name: 'Operación planta de energía solar en Colombia',
        facturacion: 10,
        costosOperativos: 30,
        nivelEjecucion: 40,
        numeroOperarios: 50,
        cantidadEnergiaGenerada: 60,
      ),
    );
    data.add(
      Informacion(
        name: 'Operación planta de energía solar en Brasil',
        facturacion: 10,
        costosOperativos: 30,
        nivelEjecucion: 40,
        numeroOperarios: 50,
        cantidadEnergiaGenerada: 60,
      ),
    );

    setState(() {});

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
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          if (data.length > 0)
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
                  columnSpacing: 12,
                  horizontalMargin: 5,
                  minWidth: 300,
                  columns: [
                    DataColumn2(
                      label: Text(
                        '',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      size: ColumnSize.L,
                    ),
                    DataColumn(
                      label: Text(
                        fFacturacion,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        cCostosOperativos,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        nNivelEjecucionPresupuesto,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        nNumeroOperaciones,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        cCantGeneradaM,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                  rows: List<DataRow>.generate(
                    data.length,
                    (index) => DataRow(
                      cells: [
                        DataCell(
                          Container(
                            width: double.infinity,
                            child: Text(
                              data[index].name,
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
                                data[index].facturacion),
                            child: Text(
                              data[index].facturacion.toString(),
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      data[index].facturacion),
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
                                data[index].costosOperativos),
                            child: Text(
                              data[index].costosOperativos.toString(),
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      data[index].facturacion),
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
                                data[index].nivelEjecucion),
                            child: Text(
                              data[index].nivelEjecucion.toString(),
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      data[index].facturacion),
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
                                data[index].numeroOperarios),
                            child: Text(
                              data[index].numeroOperarios.toString(),
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      data[index].facturacion),
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
                                data[index].cantidadEnergiaGenerada),
                            child: Text(
                              data[index].cantidadEnergiaGenerada.toString(),
                              style: TextStyle(
                                color: _getCellTextColor(
                                  _getCellBackgroundColor(
                                      data[index].facturacion),
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

  /// Returns the cell  text color based on the cell background color
  Color _getCellTextColor(Color backgroundColor) {
    if (backgroundColor == kDarkGreen || backgroundColor == kDarkerGreen) {
      return Colors.white;
    }

    return Colors.black;
  }

  Color _getCellBackgroundColor(int numero) {
    if (numero >= 0 && numero <= 20) {
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
      // 1, 2, 7, 11, 13, 19, 22, 23, 26, 29
      return kDarkerGreen;
    }
  }
}
