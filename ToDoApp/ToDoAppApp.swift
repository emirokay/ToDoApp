//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Emir Okay on 22.09.2024.
//

import SwiftUI

@main
struct ToDoAppApp: App {
	@StateObject var tasks = Tasks()
	
    var body: some Scene {
        WindowGroup {
			ListView()
				.environmentObject(tasks)
        }
    }
}
