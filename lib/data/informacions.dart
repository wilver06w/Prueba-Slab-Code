import 'dart:math';

import 'package:pruebaslabcode/models/Informacion.dart';

var rng = new Random();

///Inicializando la data, hice un ramdom para que se observara el cambio del cuadro, el ultimo item lo deje estatico.
final allUsers = <Informacion>[
  Informacion(
    name: 'Operacion Planta Chile',
    facturacion: rng.nextInt(100),
    costosOperativos: rng.nextInt(100),
    nivelEjecucion: rng.nextInt(100),
    numeroOperarios: rng.nextInt(100),
    cantidadEnergiaGenerada: rng.nextInt(100),
  ),
  Informacion(
    name: 'Adquisicion Planta Uruguay',
    facturacion: rng.nextInt(100),
    costosOperativos: 0,
    nivelEjecucion: rng.nextInt(100),
    numeroOperarios: rng.nextInt(100),
    cantidadEnergiaGenerada: rng.nextInt(100),
  ),
  Informacion(
    name: 'Operacion Planta Argentina',
    facturacion: rng.nextInt(100),
    costosOperativos: rng.nextInt(100),
    nivelEjecucion: rng.nextInt(100),
    numeroOperarios: rng.nextInt(100),
    cantidadEnergiaGenerada: rng.nextInt(100),
  ),
  Informacion(
    name: 'Adquisicion Planta Colombia',
    facturacion: rng.nextInt(100),
    costosOperativos: 0,
    nivelEjecucion: rng.nextInt(100),
    numeroOperarios: rng.nextInt(100),
    cantidadEnergiaGenerada: rng.nextInt(100),
  ),
  Informacion(
    name: 'Adquisicion Planta Ecuador',
    facturacion: rng.nextInt(100),
    costosOperativos: 0,
    nivelEjecucion: rng.nextInt(100),
    numeroOperarios: rng.nextInt(100),
    cantidadEnergiaGenerada: rng.nextInt(100),
  ),
  Informacion(
    name: 'Operacion Planta Brasil',
    facturacion: 90,
    costosOperativos: 30,
    nivelEjecucion: 42,
    numeroOperarios: 70,
    cantidadEnergiaGenerada: 80,
  ),
];
