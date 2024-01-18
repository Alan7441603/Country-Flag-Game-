//
//  Question.swift
//  Country Flag Game 3
//
//  Created by Alan Rivera on 1/18/24.
//
import SwiftUI

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}
struct Question: Identifiable {
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswers: [Answer]
}
