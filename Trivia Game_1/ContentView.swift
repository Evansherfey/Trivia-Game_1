//
//  ContentView.swift
//  Trivia Game_1
//
//  Created by Student on 11/25/24.
//

import SwiftUI

struct ContentView: View {

    let questions = [
            "What day of the week is Christmas?",
            "What day of the week is New Years Day?",
            "What day of the week is Valentines Day?"
            
        ]
        
        let answers = [
            [
                ["Monday", "Wrong"],
                ["Tuesday", "Wrong"],
                ["Wednesday", "Correct"],
                ["Thursday", "Wrong"]
            ],
            [
                ["Monday", "Wrong"],
                ["Tuesday", "Wrong"],
                ["Wednesday", "Correct"],
                ["Thursday", "Wrong"]
            ],
            [
                ["Tuesday", "Wrong"],
                ["Wednesday", "Wrong"],
                ["Thursday", "Wrong"],
                ["Friday", "Correct"]
        ],
       ]
        @State private var questionIndex = 0
        
        @State private var message = "What day of the week is christmas?"
            
        @State private var ques = [
            [
                "question": "First Question",
                "answer": "First Answer"
            ],
            [
                "question": "Second Question",
                "answer": "Second Answer"
            ],
            [
                "question": "Third Question",
                "answer": "Third Answer"
            ],
        ]
        var body: some View {
            VStack {
                ques[0]["question"] != nil ? Text(ques[0]["question"]!) : Text("Hello")
                
                Text("HOLIDAY TRIVIA GAME")

                Text(message)

                Button {
                    checkAnswer(ans: 0)
                } label: {
                    Text(answers[questionIndex][0][0])
                }

                Button {
                    checkAnswer(ans: 1)
                } label: {
                    Text(answers[questionIndex][1][0])
                }

                Button {
                    checkAnswer(ans: 2)
                } label: {
                    Text(answers[questionIndex][2][0])
                }

                Button {
                    checkAnswer(ans: 3)
                } label: {
                    Text(answers[questionIndex][3][0])
                }

                Button {
                    nextQuestion()
                } label: {
                    Text("NEXT QUESTION")
                }

            }
        }
        
        func nextQuestion() {
            if (questionIndex < questions.count - 1){
                questionIndex += 1
                message = questions[questionIndex]
            } else {
                message = "Game Over. Thanks for playing!"
            }
        }
        
        func checkAnswer(ans: Int){
            if (answers[questionIndex][ans][1] == "Correct") {
                message = "CORRECT"
            } else {
                message = "WRONG"
            }
        }
            
    }

    #Preview {
        ContentView()
    }
