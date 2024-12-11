//
//  Questions.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 10/12/24.
//

import Foundation

// Define the Question structure
struct Question {
    let question: String
    let options: [String]
    let correctOption: String
}

let marvelQuestions: [Question] = [
    Question(
        question: "Who is known as the 'God of Thunder'?",
        options: ["Loki", "Hawkeye", "Thor", "Iron Man"],
        correctOption: "Thor"
    ),
    Question(
        question: "What is the name of Captain America's shield?",
        options: ["Plastic Shield", "Vibranium Shield", "Adamantium Shield", "Steel Shield"],
        correctOption: "Vibranium Shield"
    ),
    Question(
        question: "In which movie does the Avengers first assemble?",
        options: ["Infinity War", "The Avengers", "Endgame", "Age of Ultron"],
        correctOption: "The Avengers"
    ),
    Question(
        question: "What is the real name of Black Panther?",
        options: ["Shuri", "T'Challa", "M'Baku", "Erik"],
        correctOption: "T'Challa"
    ),
    Question(
        question: "What is the color of the Reality Stone?",
        options: ["Yellow", "Blue", "Green", "Red"],
        correctOption: "Red"
    ),
    Question(
        question: "Who is the villain in the first Iron Man movie?",
        options: ["Thanos", "Whiplash", "Loki", "Obadiah Stane"],
        correctOption: "Obadiah Stane"
    ),
    Question(
        question: "What is the name of Thor's hammer?",
        options: ["Stormbreaker", "Mjolnir", "Excalibur", "Gungnir"],
        correctOption: "Mjolnir"
    ),
    Question(
        question: "Who directed the Avengers movies?",
        options: ["Russo Brothers", "Joss Whedon", "James Gunn", "Jon Favreau"],
        correctOption: "Russo Brothers"
    ),
    Question(
        question: "What species is Groot?",
        options: ["Skrull", "Flora Colossus", "Kree", "Asgardian"],
        correctOption: "Flora Colossus"
    ),
    Question(
        question: "What is the name of Tony Stark's AI assistant?",
        options: ["Friday", "Karen", "Edith", "Jarvis"],
        correctOption: "Jarvis"
    )
]

let geographyQuestions: [Question] = [
    Question(
        question: "What is the largest continent by area?",
        options: ["Africa", "Asia", "Europe", "Antarctica"],
        correctOption: "Asia"
    ),
    Question(
        question: "Which country has the longest coastline in the world?",
        options: ["Canada", "Russia", "Australia", "USA"],
        correctOption: "Canada"
    ),
    Question(
        question: "What is the smallest country in the world by land area?",
        options: ["San Marino", "Vatican City", "Monaco", "Malta"],
        correctOption: "Vatican City"
    ),
    Question(
        question: "What is the capital of Australia?",
        options: ["Melbourne", "Canberra", "Sydney", "Brisbane"],
        correctOption: "Canberra"
    ),
    Question(
        question: "Which river is the longest in the world?",
        options: ["Amazon", "Mississippi", "Yangtze", "Nile"],
        correctOption: "Nile"
    ),
    Question(
        question: "Which desert is the largest in the world?",
        options: ["Sahara", "Arabian", "Gobi", "Kalahari"],
        correctOption: "Sahara"
    ),
    Question(
        question: "What is the highest mountain in the world?",
        options: ["Kangchenjunga", "Mount Everest", "Lhotse", "K2"],
        correctOption: "Mount Everest"
    ),
    Question(
        question: "Which country has the most time zones?",
        options: ["France", "Russia", "USA", "China"],
        correctOption: "France"
    ),
    Question(
        question: "What ocean lies between Africa and Australia?",
        options: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Southern Ocean"],
        correctOption: "Indian Ocean"
    ),
    Question(
        question: "Which island country is also a continent?",
        options: ["Greenland", "Iceland", "New Zealand", "Australia"],
        correctOption: "Australia"
    )
]

let historyQuestions: [Question] = [
    Question(
        question: "Who was the first President of the United States?",
        options: ["George Washington", "Abraham Lincoln", "John Adams", "Thomas Jefferson"],
        correctOption: "George Washington"
    ),
    Question(
        question: "In which year did World War II end?",
        options: ["1950", "1918", "1939", "1945"],
        correctOption: "1945"
    ),
    Question(
        question: "What was the name of the ship that carried the Pilgrims to America in 1620?",
        options: ["Beagle", "Mayflower", "Santa Maria", "Endeavour"],
        correctOption: "Mayflower"
    ),
    Question(
        question: "Which ancient civilization built the pyramids?",
        options: ["Mayan", "Greek", "Egyptian", "Roman"],
        correctOption: "Egyptian"
    ),
    Question(
        question: "Who was known as the 'Iron Lady'?",
        options: ["Angela Merkel", "Hillary Clinton", "Indira Gandhi", "Margaret Thatcher"],
        correctOption: "Margaret Thatcher"
    ),
    Question(
        question: "Which year was the Declaration of Independence signed?",
        options: ["1775", "1776", "1783", "1791"],
        correctOption: "1776"
    ),
    Question(
        question: "Who was the leader of Germany during World War II?",
        options: ["Joseph Stalin", "Winston Churchill", "Adolf Hitler", "Franklin D. Roosevelt"],
        correctOption: "Adolf Hitler"
    ),
    Question(
        question: "What was the name of the first manned moon landing mission?",
        options: ["Challenger", "Sputnik", "Apollo 11", "Voyager"],
        correctOption: "Apollo 11"
    ),
    Question(
        question: "Who discovered America?",
        options: ["Ferdinand Magellan", "John Cabot", "Vasco da Gama", "Christopher Columbus"],
        correctOption: "Christopher Columbus"
    ),
    Question(
        question: "What year did the Cold War end?",
        options: ["1991", "1980", "1975", "1989"],
        correctOption: "1991"
    )
]
