//
//  Question.swift
//  iQuiz
//
//  Created by Wesley Rebouças on 14/08/23.
//

import Foundation

struct Question{
    var title:  String
    var answer: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(title: "Quem encontrou o Brasil?", answer: ["Pedro Alvares Carvalho", "Pedro Alberto Cabral", "Pedro Alvares Cabral"], correctAnswer: 2),
    Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", answer: ["Expecto Patronum", "Avada Kedava", "Explelliarmos"], correctAnswer: 2),
    Question(title: "Qual é a fórmula química da água pesada?", answer: ["H2O2", "D2O", "H302"], correctAnswer: 1),
    Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", answer: ["Expectro Patronum", "Avada Kedavra", "Expelliarmus"], correctAnswer: 2),
    Question(title: "Quando foi lançado o filme Avatar 2?", answer: ["2014", "2022", "2023"], correctAnswer: 1),
    Question(title: "Quando foi lançado o filme Vingadores Ultimato?", answer: ["2019", "2018", "2017"], correctAnswer: 0),
    Question(title: "Qual é o primeiro filme da franquia Star Wars?", answer: ["Star Wars: A Ameaça Fantasma", "Star Wars: Uma Nova Esperança", "Star Wars: O Império Contra-Ataca"], correctAnswer: 1),
    Question(title: "Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?", answer: ["Homem de Ferro", "Capitão América: O Primeiro Vingador", "Thor"], correctAnswer: 0),
    Question(title: "Qual é o personagem principal de The Office, interpretado por Steve Carell?", answer: ["Michael Scott", "Jim Halpert", "Dwight Schrute"], correctAnswer: 0),
    Question(title: "Qual é o trabalho de Jay Pritchett na série Modern Family?", answer: ["Médico", "Empresário", "Advogado"], correctAnswer: 1),

]
