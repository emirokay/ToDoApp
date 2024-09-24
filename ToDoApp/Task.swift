//
//  Task.swift
//  ToDoApp
//
//  Created by Emir Okay on 23.09.2024.
//

import SwiftUI

class Task: Identifiable, Codable {
	var id = UUID()
	var description = ""
	fileprivate(set) var completed = false
}

@MainActor class Tasks: ObservableObject {
	@Published var items: [Task]
	let saveKey = "SavedData"
	
	init() {
		if let data = UserDefaults.standard.data(forKey: saveKey) {
			if let decoded = try? JSONDecoder().decode([Task].self, from: data) {
				items = decoded
				return
			}
		}
		
		items = []
	}
	
	func save() {
		if let encoded = try? JSONEncoder().encode(items) {
			UserDefaults.standard.set(encoded, forKey: saveKey)
		}
	}
	
	func delete(_ task: Task) {
		items.removeAll(where: { $0.id == task.id })
		save()
	}
	
	func newTask(_ str: String) {
		let newTask = Task()
		newTask.description = str
		items.append(newTask)
		save()
	}
	
	func toggle (_ task: Task) {
		objectWillChange.send()
		task.completed.toggle()
		save()
	}
}
