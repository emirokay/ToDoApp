//
//  ListView.swift
//  ToDoApp
//
//  Created by Emir Okay on 23.09.2024.
//

import SwiftUI

struct ListView: View {
	@EnvironmentObject var tasks : Tasks
	@State var isAddView = false
	
    var body: some View {
		NavigationStack {
			List {
				if tasks.items.isEmpty {
					Text("Nothing to do for now")
				} else {
					if !tasks.items.filter({ !$0.completed }).isEmpty {
						Section("Active") {
							ListTaskRow(showCompleted: false)
						}
					}
					if !tasks.items.filter({ $0.completed }).isEmpty {
						Section("Completed") {
							ListTaskRow(showCompleted: true)
						}
					}
				}
			}
			.scrollContentBackground(.hidden)
			.background(.quinary)
			.navigationTitle("To do")
			.toolbar {
				Button("Add", systemImage: "plus"){
					isAddView.toggle()
				}
			}
			.sheet(isPresented: $isAddView) {
				AddTask()
			}
		}
		.environmentObject(tasks)
    }
}

#Preview {
	ListView()
		.environmentObject(Tasks())
}


