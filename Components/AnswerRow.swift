//
//  AnswerRow.swift
//  Country Flag Game 3
//
//  Created by Alan Rivera on 1/22/24.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State private var isSelected = false
    var body: some View {
        HStack(spacing: 20, content: {
            Image(systemName:"circle.fill")
                .font(.caption)
            Text(answer.text)
                .font(.title)
            if isSelected {
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.fill.circle" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? .green : .red)
            }
        })
        .padding()
        .frame(width: 300, alignment: .leading)
        .background(.white)
        .shadow(color: isSelected ? (answer.isCorrect ? .green : .red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            isSelected = true
        }
    }
    struct AnswerRow_Previews: PreviewProvider {
        static var previews: some View {
            AnswerRow(answer: Answer(text: "Test", isCorrect: true))
        }
    }
}
