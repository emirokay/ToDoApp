//
//  AddTask.swift
//  ToDoApp
//
//  Created by Emir Okay on 24.09.2024.
//

import SwiftUI

struct AddTask: View {
	@EnvironmentObject var tasks: Tasks
	@Environment(\.dismiss) private var dismiss
	@State var text = ""
	
    var body: some View {
		NavigationStack {
			VStack {
				ZStack(alignment: .topLeading) {
					TextEditor(text: $text)
						.textEditorStyle(.plain)
						.padding(4)
						.background {
							Rectangle()
								.foregroundStyle(.quinary)
								.clipShape(RoundedRectangle(cornerRadius: 10))
						}
						.padding()
					
					if text.isEmpty {
						Text("What to do?")
							.foregroundColor(Color(.placeholderText))
							.padding(.horizontal, 8)
							.padding(.vertical, 12)
							.padding()
					}
				}
				.font(.body)
				.frame(maxHeight: UIScreen.main.bounds.height * 0.50)
					
				Spacer()
			}
			.toolbar{
				ToolbarItem(placement: .topBarLeading) {
					Button("Cancel", role: .cancel) {
						dismiss()
					}
					.foregroundStyle(.red)
				}
				ToolbarItem(placement: .topBarTrailing) {
					Button("Add"){
						if !text.trimmingCharacters(in: .whitespaces).isEmpty {
							tasks.newTask(text)
							dismiss()
						}
					}
				}
			}
		}
    }
}

#Preview {
	AddTask()
		.environmentObject(Tasks())
}
