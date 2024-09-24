//
//  ListTaskRow.swift
//  ToDoApp
//
//  Created by Emir Okay on 24.09.2024.
//

import SwiftUI

struct ListTaskRow: View {
	@EnvironmentObject var tasks: Tasks
	let showCompleted: Bool

	var filteredTasks: [Task] {
		tasks.items.filter { $0.completed == showCompleted }
	}

	var body: some View {
		ForEach(filteredTasks) { task in
			Button {
				tasks.toggle(task)
			} label: {
				HStack {
					Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
						.font(.title2)
						.foregroundStyle(task.completed ? .gray : .blue)
						.contentTransition(.symbolEffect(.replace))

					Text(task.description)
						.foregroundStyle(task.completed ? .gray : .primary)
						.strikethrough(task.completed ? true : false)
				}
			}
			.swipeActions {
				Button("Delete", role: .destructive) {
					tasks.delete(task)
				}
			}
		}
	}
}
