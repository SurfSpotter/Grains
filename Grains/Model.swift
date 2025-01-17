//
//  Data.swift
//  Grains
//
//  Created by Алексей Чигарских on 03.02.2020.
//  Copyright © 2020 Алексей Чигарских. All rights reserved.
/*
 1. создать протокол
 2. создать класс круп
 2.1 создать несколько круп тестовых круп (3шт)
 3. создать массив круп
 4. coздать MainViewController
 5. строка поиска
 6. Логика для строки поиска
 #5A4235 темная тема

 */

import Foundation
import UIKit

// MARK: -  Protocol

protocol GrainProtocol {
    var name: String { get }
    var keyWords: [String] { get }
    var timeOfBoil: Int { get }
    var proportions: Double { get }
    var backgroungColorInHex: String { get }

    var fat: Double { get }
    var carbohydrate: Double { get }
    var protein: Double { get }
    var caloriesInCcal: Double { get }
    var grainImgName: String { get }
    var backgroundColour: UIColor { get }
    var description: String { get }
}

// MARK: -  Class of Grains

class Grain: GrainProtocol {
    var name: String

    var keyWords: [String]

    var timeOfBoil: Int

    var proportions: Double

    var backgroungColorInHex: String

    var fat: Double

    var carbohydrate: Double

    var protein: Double

    var caloriesInCcal: Double

    var description: String

    var grainImgName: String

    var backgroundColour: UIColor

    // Make constructor

    init(name: String, keyWords: [String], timeOfBoil: Int, proportions: Double, backgroungColorInHex: String, fat: Double, carbohydrate: Double, protein: Double, caloriesInCcal: Double, description: String, imageName: String, backGroundColorRed: CGFloat, backGroundColorGreen: CGFloat, backGroundColorBlue: CGFloat, backGroundColorAlpha: CGFloat) {
        self.name = name
        self.keyWords = keyWords
        self.timeOfBoil = timeOfBoil
        self.proportions = proportions
        self.backgroungColorInHex = backgroungColorInHex
        self.fat = fat
        self.carbohydrate = carbohydrate
        self.protein = protein
        self.caloriesInCcal = caloriesInCcal
        self.description = description
        grainImgName = imageName
        backgroundColour = UIColor(red: backGroundColorRed / 255, green: backGroundColorGreen / 255, blue: backGroundColorBlue / 255, alpha: backGroundColorAlpha)
    }
}

class Model: NSObject {
    // singleTone

    static let shared = Model()

    // Variables

    var grainsAllTogether: [Grain] = []

    var favGrains: [Grain] = []

    var testUDFavArr: Grain?

    // MARK: - Grains variable initialized

    let boulgour = Grain(name: "Булгур".localize(),
                         keyWords: [" булгур boulgur bulgur"],
                         timeOfBoil: 25,
                         proportions: 0.5,
                         backgroungColorInHex: "#BE874A",
                         fat: 0.24,
                         carbohydrate: 14.08,
                         protein: 3.08,
                         caloriesInCcal: 83,
                         description: "1. Перед варкой промойте в проточной воде. \n2. Обжарьте булгур на растительном масле 3 минуты. \n3. Добавьте в крупу кипяток в указанной пропорции.\n4. Варите под крышкой не мешая.".localize(),
                         imageName: "boulgour",
                         backGroundColorRed: 1,
                         backGroundColorGreen: 1,
                         backGroundColorBlue: 1,
                         backGroundColorAlpha: 1)

    let buckwheat = Grain(name: "Гречневая крупа".localize(),
                          keyWords: ["buckwheat, Buckwheat, Гречка, греча, гречка, ядрица, гречиха "],
                          timeOfBoil: 15,
                          proportions: 0.25,
                          backgroungColorInHex: "#B45A17",
                          fat: 2.5,
                          carbohydrate: 72,
                          protein: 13,
                          caloriesInCcal: 360,
                          description: "1. Засыпьте в холодную, немного подсоленную воду. \n2. Доведите до кипения и варите на тихом огне.".localize(),
                          imageName: "buckwheat",
                          backGroundColorRed: 157,
                          backGroundColorGreen: 105,
                          backGroundColorBlue: 47,
                          backGroundColorAlpha: 1)
    let oatmeal = Grain(name: "Геркулес".localize(),
                        keyWords: ["Oatmeal", "oatmeal", "овес", "овсянка", "хлопья", "геркулес"],
                        timeOfBoil: 20,
                        proportions: 0.33333333333,
                        backgroungColorInHex: "#A99364",
                        fat: 6.5, carbohydrate: 60,
                        protein: 13,
                        caloriesInCcal: 370,
                        description: "1. Засыпьте в кипящую воду. \n2. Варите на медленном огне, периодически помешивая.".localize(),
                        imageName: "herkuless",
                        backGroundColorRed: 1,
                        backGroundColorGreen: 1,
                        backGroundColorBlue: 1,
                        backGroundColorAlpha: 1)

    let goroh = Grain(name: "Горох".localize(),
                      keyWords: ["Горох goroh горох peas"],
                      timeOfBoil: 60,
                      proportions: 0.33333333333,
                      backgroungColorInHex: "#D1AA85",
                      fat: 2.0,
                      carbohydrate: 53.0,
                      protein: 22.0,
                      caloriesInCcal: 320.0,

                      description: "1. Заранее замочите. \n2. Хорошо промойте.  \n3. Залейте холодной водой и варите на медленном огне, перирдически помешивая. ".localize(),
                      imageName: "goroh",
                      backGroundColorRed: 30,
                      backGroundColorGreen: 30,
                      backGroundColorBlue: 30,
                      backGroundColorAlpha: 30)

    let dolichos = Grain(name: "Долихос".localize(),
                         keyWords: ["долихос doliсhos"],
                         timeOfBoil: 120,
                         proportions: 0.25,
                         backgroungColorInHex: "#D2B566",
                         fat: 1,
                         carbohydrate: 59,
                         protein: 21,
                         caloriesInCcal: 329,
                         description: "1. Замочите на 8-10 часов в большом количестве холодной воды. \n2. Промойте. \n3. Залейте крутым кипятком. \n4. Варите без крышки на слабом огне.".localize(),
                         imageName: "dolichos",
                         backGroundColorRed: 157,
                         backGroundColorGreen: 105,
                         backGroundColorBlue: 47,
                         backGroundColorAlpha: 1)

    let kinoa = Grain(name: "Киноа".localize(),
                      keyWords: ["киноа Киноа quinoa "],
                      timeOfBoil: 15,
                      proportions: 0.5,
                      backgroungColorInHex: "#B5BAC0",
                      fat: 7,
                      carbohydrate: 67,
                      protein: 14,
                      caloriesInCcal: 390,
                      description: "1. Тщательно промойте в холодной воде, иначе крупа будет горчить. \n2. Залейте холодной водой. \n3. Варите на медленном огне.".localize(),
                      imageName: "kinoa",
                      backGroundColorRed: 157,
                      backGroundColorGreen: 105,
                      backGroundColorBlue: 47,
                      backGroundColorAlpha: 1)

    let kukuruza = Grain(name: "Кукуруза".localize(),
                         keyWords: ["кукуруза Кукуруза corn "],
                         timeOfBoil: 30,
                         proportions: 0.2,
                         backgroungColorInHex: "#DE7B0A",
                         fat: 1,
                         carbohydrate: 80,
                         protein: 7,
                         caloriesInCcal: 360,
                         description: "1. Добавьте крупу в кипящую воду. \n2. Варите на медленном огне, периодически помешивая. ".localize(),
                         imageName: "kukuruza",
                         backGroundColorRed: 157,
                         backGroundColorGreen: 105,
                         backGroundColorBlue: 47,
                         backGroundColorAlpha: 1)

    let kuskus = Grain(name: "Кускус".localize(),
                       keyWords: ["Кускус кускус кус kuskus cous cus"],
                       timeOfBoil: 5,
                       proportions: 0.5,
                       backgroungColorInHex: "#F8BF79",
                       fat: 1,
                       carbohydrate: 73,
                       protein: 13,
                       caloriesInCcal: 350,
                       description: "1. Залейте кипятком. \n2. Накройте крышкой и дайте постоять 5-7 минут. \n3. Чтобы сделать крупу рассыпчатой, просто взбейте ее вилкой.".localize(),
                       imageName: "kuskus",
                       backGroundColorRed: 157,
                       backGroundColorGreen: 105,
                       backGroundColorBlue: 47,
                       backGroundColorAlpha: 1)

    let semolina = Grain(name: "Манная крупа".localize(),
                         keyWords: ["Манка манная манка semolina "],
                         timeOfBoil: 7,
                         proportions: 0.1,
                         backgroungColorInHex: "#C3C7C1",
                         fat: 1,
                         carbohydrate: 73,
                         protein: 13,
                         caloriesInCcal: 360,
                         description: "1. Засыпьте в кипящую воду или молоко. \n2. Постоянно помешивайте. \n3. Снимите с плиты и дайте постоять под крышкой 10 минут.".localize(),
                         imageName: "semolina",
                         backGroundColorRed: 157,
                         backGroundColorGreen: 105,
                         backGroundColorBlue: 47,
                         backGroundColorAlpha: 1)

    let mash = Grain(name: "Маш".localize(),
                     keyWords: ["mash Mash маш Маш"],
                     timeOfBoil: 35,
                     proportions: 0.4,
                     backgroungColorInHex: "#C5A972",
                     fat: 2,
                     carbohydrate: 46,
                     protein: 23.5,
                     caloriesInCcal: 300,
                     description: "1. Замочите крупу на 1-3 часа. \n2. Промойте в холодной воде.\n3. Засыпьте крупу в кипящую воду.\n4. Варите на медленном огне.".localize(),
                     imageName: "mash",
                     backGroundColorRed: 157,
                     backGroundColorGreen: 105,
                     backGroundColorBlue: 47,
                     backGroundColorAlpha: 1)

    let nout = Grain(name: "Нут".localize(),
                     keyWords: ["Нут нут сhickpeas nout nut "],
                     timeOfBoil: 40,
                     proportions: 0.33333333333,
                     backgroungColorInHex: "#CFB8A4",
                     fat: 6,
                     carbohydrate: 61,
                     protein: 19,
                     caloriesInCcal: 364,
                     description: "1. Замочите на 3-5 часов.\n2. Промойте.\n3. Залейте холодной водой и варите на медленном огне. \n4. За 10 минут до готовности слейте воду, залейте кипятком и снова поставьте на огонь.".localize(),
                     imageName: "nout",
                     backGroundColorRed: 157,
                     backGroundColorGreen: 105,
                     backGroundColorBlue: 47,
                     backGroundColorAlpha: 1)

    let oatmealNoBoil = Grain(name: "Овсяные хлопья не требующие варки".localize(),
                              keyWords: ["овсяные", "овес", "хлопья oat oatmel flakes"],
                              timeOfBoil: 5,
                              proportions: 0.5,
                              backgroungColorInHex: "#83665B",
                              fat: 6,
                              carbohydrate: 61,
                              protein: 19,
                              caloriesInCcal: 364,
                              description: "1. Залейте хлопья кипятком или горячим молоком. \n2. Тщательно размешайте. \n3. Накройте крышкой и дайте настояться.".localize(),
                              imageName: "oatmealNoBoil",
                              backGroundColorRed: 157,
                              backGroundColorGreen: 105,
                              backGroundColorBlue: 47,
                              backGroundColorAlpha: 1)

    let oatmealNo1 = Grain(name: "Овсяные хлопья №1".localize(),
                           keyWords: ["овсяные", "овес", "хлопья oat oatmel flakes"],
                           timeOfBoil: 10,
                           proportions: 0.33333333333,
                           backgroungColorInHex: "#C1AD93",
                           fat: 7,
                           carbohydrate: 60,
                           protein: 13,
                           caloriesInCcal: 380,
                           description: "1. Засыпьте в кипящую воду или молоко. \n2. Варите на медленном огне. \n3. Снимите с огня, дайте постоять под крышкой 3 минуты.".localize(),
                           imageName: "oatmealNo1",
                           backGroundColorRed: 157,
                           backGroundColorGreen: 105,
                           backGroundColorBlue: 47,
                           backGroundColorAlpha: 1)

    let oatmealNo2 = Grain(name: "Овсяные хлопья №2".localize(),
                           keyWords: ["овсяные", "овес", "хлопья oat oatmel flakes"],
                           timeOfBoil: 5,
                           proportions: 0.33333333333,
                           backgroungColorInHex: "#C8C1AC",
                           fat: 7,
                           carbohydrate: 60,
                           protein: 13,
                           caloriesInCcal: 380,
                           description: "1. Засыпьте в кипящую воду или молоко.\n2. Варите на медленном огне. \n3. Снимите с огня, дайте постоять под крышкой 3 минуты.".localize(),
                           imageName: "oatmealNo2",
                           backGroundColorRed: 157,
                           backGroundColorGreen: 105,
                           backGroundColorBlue: 47,
                           backGroundColorAlpha: 1)

    let oatmealNo3 = Grain(name: "Овсяные хлопья №3".localize(),
                           keyWords: ["овсяные", "овес", "хлопья oat oatmel flakes"],
                           timeOfBoil: 3,
                           proportions: 0.33333333333,
                           backgroungColorInHex: "#947763",
                           fat: 7,
                           carbohydrate: 60,
                           protein: 13,
                           caloriesInCcal: 380,
                           description: "1. Засыпьте в кипящую воду или молоко.\n2. Варите на медленном огне. \n3. Снимите с огня, дайте постоять под крышкой 3 минуты.".localize(),
                           imageName: "oatmealNo3",
                           backGroundColorRed: 157,
                           backGroundColorGreen: 105,
                           backGroundColorBlue: 47,
                           backGroundColorAlpha: 1)

    let pearlBarley = Grain(name: "Перловая крупа".localize(),
                            keyWords: ["перловая", "перловка pearl barley"],
                            timeOfBoil: 45,
                            proportions: 0.2,
                            backgroungColorInHex: "#DBBC9E",
                            fat: 1,
                            carbohydrate: 69,
                            protein: 10,
                            caloriesInCcal: 320,
                            description: "1. Если вы предварительно замачивали крупу, то время варки сокращается на 15 минут. \n2. Залейте холодной водой. \n3. Варите на медленном огне.".localize(),
                            imageName: "pearlBarley",
                            backGroundColorRed: 157,
                            backGroundColorGreen: 105,
                            backGroundColorBlue: 47,
                            backGroundColorAlpha: 1)

    let polba = Grain(name: "Полба".localize(),
                      keyWords: ["полба spelt"],
                      timeOfBoil: 30,
                      proportions: 0.33333333333,
                      backgroungColorInHex: "#BC9F82",
                      fat: 2.2,
                      carbohydrate: 61.2,
                      protein: 14.7,
                      caloriesInCcal: 323,
                      description: "1. Промойте холодной водой. \n2.  Замочите на 1 час. \n3. Слейте воду. \n4. Залейте холодной водой и варите на тихом огне под крышкой.".localize(),
                      imageName: "polba",
                      backGroundColorRed: 157,
                      backGroundColorGreen: 105,
                      backGroundColorBlue: 47,
                      backGroundColorAlpha: 1)

    let millet = Grain(name: "Пшено".localize(),
                       keyWords: ["пшено millet", "пшеничная"],
                       timeOfBoil: 25,
                       proportions: 0.33333333333,
                       backgroungColorInHex: "#DEB051",
                       fat: 3,
                       carbohydrate: 73,
                       protein: 11,
                       caloriesInCcal: 360,
                       description: "1. Промойте проточной водой 3-5 раз. \n2. Залейте холодной водой и варите на медленном огне. \n3. Дайте настояться под крышкой 5-10 минут.".localize(),
                       imageName: "millet",
                       backGroundColorRed: 157,
                       backGroundColorGreen: 105,
                       backGroundColorBlue: 47,
                       backGroundColorAlpha: 1)

    let riceBasmati = Grain(name: "Рис Басмати".localize(),
                            keyWords: ["рис", "басмати", "rice basmati "],
                            timeOfBoil: 15,
                            proportions: 0.666666666,
                            backgroungColorInHex: "#C8C0B9",
                            fat: 0.6,
                            carbohydrate: 76.4,
                            protein: 7.6,
                            caloriesInCcal: 340,
                            description: "1. Промойте. \n2. Залейте холодной водой и варите на медленнм огне. \n3. Не мешайте.\n4. Если вода выпарилась, а рис суховат - необходимо добавить кипяток, затем варить до готовности.".localize(),
                            imageName: "riceBasmati",
                            backGroundColorRed: 157,
                            backGroundColorGreen: 105,
                            backGroundColorBlue: 47,
                            backGroundColorAlpha: 1)

    let riceArborio = Grain(name: "Рис Арборио".localize(),
                            keyWords: ["рис", "арборио", "arborio", "rice"],
                            timeOfBoil: 20,
                            proportions: 0.5,
                            backgroungColorInHex: "#D1C6B2",
                            fat: 1.6,
                            carbohydrate: 78.8,
                            protein: 6.8,
                            caloriesInCcal: 338,
                            description: "1. Промойте. \n2. Залейте холодной водой и поставьте на огонь. \n3. Регулярно помешивайте. \n4. Снимите с плиты и дайте настояться под крышкой 10-15 минут.".localize(),
                            imageName: "riceArborio",
                            backGroundColorRed: 157,
                            backGroundColorGreen: 105,
                            backGroundColorBlue: 47,
                            backGroundColorAlpha: 1)

    let riceWild = Grain(name: "Рис Дикий".localize(),
                         keyWords: ["рис", "дикий", "wild", "rice"],
                         timeOfBoil: 40,
                         proportions: 0.33333333333,
                         backgroungColorInHex: "#968173",
                         fat: 0.5,
                         carbohydrate: 72,
                         protein: 14,
                         caloriesInCcal: 357,
                         description: "1. Замочите на 1-3 часа.\n2. Промойте. \n3. Залейте холодной водой и поставьте на огонь. \n4. Регулярно помешивайте.".localize(),
                         imageName: "riceWild",
                         backGroundColorRed: 157,
                         backGroundColorGreen: 105,
                         backGroundColorBlue: 47,
                         backGroundColorAlpha: 1)

    let riceLong = Grain(name: "Рис длиннозерный".localize(),
                         keyWords: ["рис", "длиннозерный", "ricelong grain"],
                         timeOfBoil: 25,
                         proportions: 0.5,
                         backgroungColorInHex: "#6E462D",
                         fat: 0.66,
                         carbohydrate: 80,
                         protein: 7,
                         caloriesInCcal: 365,
                         description: "1. Промойте. \n2. Залейте кипятком и перемешайте. \n3. Варите на медленном огне под крышкой.".localize(),
                         imageName: "riceLong",
                         backGroundColorRed: 157,
                         backGroundColorGreen: 105,
                         backGroundColorBlue: 47,
                         backGroundColorAlpha: 1)

    let riceSteamed = Grain(name: "Рис пропаренный".localize(),
                            keyWords: ["рис", "rice", "пропаренный steamed"],
                            timeOfBoil: 25,
                            proportions: 0.5,
                            backgroungColorInHex: "#C5B096",
                            fat: 1,
                            carbohydrate: 74,
                            protein: 7,
                            caloriesInCcal: 333,
                            description: "1. Промойте. \n2. Залейте кипятком и перемешайте. \n3. Варите на медленном огне под крышкой.".localize(),
                            imageName: "riceSteamed",
                            backGroundColorRed: 157,
                            backGroundColorGreen: 105,
                            backGroundColorBlue: 47,
                            backGroundColorAlpha: 1)

    let riceJasmin = Grain(name: "Рис Жасмин".localize(),
                           keyWords: ["рис", "rice", "жасмин jasmine"],
                           timeOfBoil: 30,
                           proportions: 0.67,
                           backgroungColorInHex: "#999589",
                           fat: 1,
                           carbohydrate: 76,
                           protein: 7.5,
                           caloriesInCcal: 340,
                           description: "1. Промойте. \n2. Залейте кипятком и перемешайте. \n3. Варите на медленном огне под крышкой.".localize(),
                           imageName: "riceJasmin",
                           backGroundColorRed: 157,
                           backGroundColorGreen: 105,
                           backGroundColorBlue: 47,
                           backGroundColorAlpha: 1)

    let riceRound = Grain(name: "Рис Круглозерный".localize(),
                          keyWords: ["рис", "rice", "круглозерный round grain"],
                          timeOfBoil: 25,
                          proportions: 0.33333333333,
                          backgroungColorInHex: "#ADACAB",
                          fat: 0.5,
                          carbohydrate: 83,
                          protein: 6.5,
                          caloriesInCcal: 360,
                          description: "1. Промойте. \n2. Залейте кипятком и перемешайте. \n3. Варите на медленном огне под крышкой.".localize(),
                          imageName: "riceRound",
                          backGroundColorRed: 157,
                          backGroundColorGreen: 105,
                          backGroundColorBlue: 47,
                          backGroundColorAlpha: 1)

    let soyaBeans = Grain(name: "Соевые бобы".localize(),
                          keyWords: ["соевые", "soya", "beans", "бобы"],
                          timeOfBoil: 25,
                          proportions: 0.5,
                          backgroungColorInHex: "#DFD0C9",
                          fat: 0.5,
                          carbohydrate: 83,
                          protein: 6.5,
                          caloriesInCcal: 360,
                          description: "1. Замочите на 12 часов.\n2. Промойте.\n3. Залейте холодной водой и варите на медленном огне. \n4. За 10 минут до готовности слейте воду, залейте кипятком и снова поставьте на огонь.".localize(),
                          imageName: "soyaBeans",
                          backGroundColorRed: 157,
                          backGroundColorGreen: 105,
                          backGroundColorBlue: 47,
                          backGroundColorAlpha: 1)

    let fasolWhite = Grain(name: "Фасоль белая".localize(),
                           keyWords: ["фасоль", "fasol", "beans", "белая white "],
                           timeOfBoil: 50,
                           proportions: 0.33333333333,
                           backgroungColorInHex: "#726F60",
                           fat: 1.6,
                           carbohydrate: 55,
                           protein: 22.3,
                           caloriesInCcal: 324,
                           description: "1. Замочите на 12 часов.\n2. Промойте.\n3. Залейте холодной водой и варите на медленном огне. ".localize(),
                           imageName: "fasolWhite",
                           backGroundColorRed: 157,
                           backGroundColorGreen: 105,
                           backGroundColorBlue: 47,
                           backGroundColorAlpha: 1)

    let fasolRed = Grain(name: "Фасоль красная".localize(),
                         keyWords: ["фасоль", "fasol", "red", "красная beans"],
                         timeOfBoil: 60,
                         proportions: 0.33333333333,
                         backgroungColorInHex: "#E66A75",
                         fat: 2,
                         carbohydrate: 55,
                         protein: 22,
                         caloriesInCcal: 330,
                         description: "1. Замочите на 12 часов.\n2. Промойте.\n3. Залейте холодной водой и варите на медленном огне. ".localize(),
                         imageName: "fasolRed",
                         backGroundColorRed: 157,
                         backGroundColorGreen: 105,
                         backGroundColorBlue: 47,
                         backGroundColorAlpha: 1)

    let chechevicaGreen = Grain(name: "Чечевица зеленая".localize(),
                                keyWords: ["чечевица", "зеленая lentils green"],
                                timeOfBoil: 40,
                                proportions: 0.5,
                                backgroungColorInHex: "#AE9F8A",
                                fat: 2,
                                carbohydrate: 65,
                                protein: 20,
                                caloriesInCcal: 350,
                                description: "1. Замочите на 1-3 часа.\n2. Промойте.\n3. Залейте кипятком и варите на медленном огне. ".localize(),
                                imageName: "chechevicaGreen",
                                backGroundColorRed: 157,
                                backGroundColorGreen: 105,
                                backGroundColorBlue: 47,
                                backGroundColorAlpha: 1)

    let chechevicaRed = Grain(name: "Чечевица красная".localize(),
                              keyWords: ["чечевица", "красная lentils red"],
                              timeOfBoil: 15,
                              proportions: 0.5,
                              backgroungColorInHex: "#D27E5E",
                              fat: 1.2,
                              carbohydrate: 62.5,
                              protein: 24.7,
                              caloriesInCcal: 328,
                              description: "1. Промойте.\n2. Залейте холодной водой и варите на медленном огне. ".localize(),
                              imageName: "chechevicaRed",
                              backGroundColorRed: 157,
                              backGroundColorGreen: 105,
                              backGroundColorBlue: 47,
                              backGroundColorAlpha: 1)

    let yachnevayaGrain = Grain(name: "Ячневая крупа".localize(),
                                keyWords: ["ячневая", "пшеничная barley grits"],
                                timeOfBoil: 20,
                                proportions: 0.33333333333,
                                backgroungColorInHex: "#D7B683",
                                fat: 1.3,
                                carbohydrate: 67.7,
                                protein: 10,
                                caloriesInCcal: 324,
                                description: "1. Залейте холодной водой и доведите до кипения. \n2. Варите, регулярно помешивая. \n3. После варки дайте постоять под крышкой 10 минут.".localize(),
                                imageName: "yachnevayaGrain",
                                backGroundColorRed: 157,
                                backGroundColorGreen: 105,
                                backGroundColorBlue: 47,
                                backGroundColorAlpha: 1)
    /*

          2688 х 1242 пикселя. В обоих случаях плотность пикселей равна 458 пикселей на дюйм.
     ё
          для длиннозёрного — 1 : 1,5–2;
          для среднезёрного — 1 : 2–2,5;
          для круглозёрного — 1 : 2,5–3;
          для пропаренного — 1 : 2;
          для коричневого — 1 : 2,5–3;
          для дикого — 1 : 3,5.

          */
    // User Defaults, add To Favourite Array

    func hexStringToUIColor(hex: String) -> UIColor {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }

        if cString.count != 6 {
            return UIColor.gray
        }

        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    func getUsDefToFavArr() {
        let usDef = UserDefaults.standard
        favGrains.removeAll()
        for i in grainsAllTogether {
            if usDef.bool(forKey: i.name) == true {
                favGrains.append(i)
            }
        }
    }

    // Склонения минут

    func skloneniaMinut(boilTime: Grain) -> String {
        switch boilTime.timeOfBoil {
        case 0:
            return "минут".localize()
        case 1:
            return "минута".localize()
        case 2 ... 4:
            return "минуты".localize()
        case 5 ... 20:
            return "минут".localize()
        case 21:
            return "минута".localize()
        case 22 ... 24:
            return "минуты".localize()
        case 25 ... 30:
            return "минут".localize()
        case 31:
            return "минута".localize()
        case 32 ... 34:
            return "минуты".localize()
        case 35 ... 40:
            return "минут".localize()
        case 41:
            return "минута".localize()
        case 42 ... 44:
            return "минуты".localize()
        case 45 ... 50:
            return "минут".localize()
        case 51:
            return "минута".localize()
        case 52 ... 54:
            return "минуты".localize()
        case 55 ... 60:
            return "минут".localize()
        default:
            return "мин.".localize()
        }
    }

    // function to Append Grains into ArrayAllTogether

    func appendToArr() {
        // grainsAllTogether.append(boulgour)
        grainsAllTogether.append(buckwheat)
        grainsAllTogether.append(oatmeal)
        grainsAllTogether.append(boulgour)
        grainsAllTogether.append(goroh)
        grainsAllTogether.append(dolichos)
        grainsAllTogether.append(kinoa)
        grainsAllTogether.append(kukuruza)
        grainsAllTogether.append(kuskus)
        grainsAllTogether.append(semolina)
        grainsAllTogether.append(soyaBeans)
        grainsAllTogether.append(mash)
        grainsAllTogether.append(nout)
        grainsAllTogether.append(oatmealNoBoil)
        grainsAllTogether.append(oatmealNo1)
        grainsAllTogether.append(oatmealNo2)
        grainsAllTogether.append(oatmealNo3)
        grainsAllTogether.append(pearlBarley)
        grainsAllTogether.append(polba)
        grainsAllTogether.append(millet)
        grainsAllTogether.append(riceBasmati)
        grainsAllTogether.append(riceArborio)
        grainsAllTogether.append(riceWild)
        grainsAllTogether.append(riceLong)
        grainsAllTogether.append(riceSteamed)
        grainsAllTogether.append(riceJasmin)
        grainsAllTogether.append(riceRound)
        grainsAllTogether.append(fasolWhite)
        grainsAllTogether.append(fasolRed)
        grainsAllTogether.append(chechevicaGreen)
        grainsAllTogether.append(chechevicaRed)
        grainsAllTogether.append(yachnevayaGrain)
        grainsAllTogether = grainsAllTogether.sorted { $0.name < $1.name }
        // print("This print from function: appendToArr" )
//        for i in Model.shared.grainsAllTogether {
//            let name = i.name
//            print (name)
//        }
        print("Count of AllTogArray \(Model.shared.grainsAllTogether.count)")
//        print ("This is all Grains in AllTogetherArray")
    }
}
