import 'package:bubolechka2/data/cards.dart';

import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
  ["1", "Obst", "плодове", "fruits", "frutas", "фрукты"],
  ["2", "Farben", "цветове", "colors", "colores", "цвета"],
  ["3", "Moebel", "мебели", "furniture", "muebles", "мебель"],
  ["4", "Sachen", "дрехи", "clothes", "ropa", "одежда"],
  ["5", "Spielzeug", "играчки", "toys", "juguetes", "игрушки"],
  ["6", "Tiere", "животни", "animals", "animales", "домашние животные"],
  ["7", "Wilde Tiere", "диви животни", "wild animals", "animales salvajes", "дикие животные"],
  ["8", "Zahlen", "цифри", "digits", "dígitos", "цифры"],
  ["9", "Wetter", "времето", "weather", "clima", "погода"],
  ["10", "Zu Hause", "вкъщи", "at home", "en casa", "дома"],
  ["11", "Natur", "природа", "nature", "naturaleza", "природа"],
  ["12", "Im Meer", "морето", "sea", "mar", "море"],
  ["13", "Am Strand", "на плажа", "on the beach", "en la playa", "на пляже"],
  ["14", "Sport", "спорт", "sport", "deporte", "спорт"],
  ["15", "Stadt", "град", "city", "ciudad", "город"],
  ["16", "Berufe", "професии", "professions", "profesiones", "професии"],
  ["17", "Fahrzeuge", "транспрорт", "transport", "transporte", "транспорт"],
  ["18", "Gemuese", "зеленчуци", "vegetables", "verduras", "овощи"]
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2],
        'es': categoryLabels[4],
        'ru': categoryLabels[5]
      },
      cards
          .where(
            (card) => card.categoryId == int.parse(categoryLabels[0]),
          )
          .toList());
}).toList();
