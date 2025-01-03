# ToDoApp
A SwiftUI-based task management app designed to help users organize, manage, and track their to-do items efficiently. The app supports adding new tasks, marking tasks as completed, deleting tasks, and automatically saving data locally for seamless usage.

## Screen Recording
https://github.com/user-attachments/assets/48b09c12-75fc-43b7-9cf4-ea875ba55786

## Features
- **Task Management**:
  - Add new tasks with descriptions.
  - Mark tasks as completed or active with a simple tap.
  - Delete tasks using swipe gestures.
- **Organized Sections**:
  - Displays active tasks and completed tasks in separate sections for clarity.
  - Shows a placeholder message when there are no tasks to display.
- **Persistent Storage**:
  - Automatically saves tasks locally using `UserDefaults`.
  - Tasks remain saved between app launches.
- **Interactive User Interface**:
  - Strikethrough effect for completed tasks.
  - Visual feedback with color-coded task states (active or completed).
- **Dark Mode Support**:
  - Fully compatible with the system's appearance settings for both light and dark modes.

## Technologies Used
- **Language**: Swift
- **Framework**: SwiftUI
- **Data Storage**: `UserDefaults`
- **Architecture**: MVVM (Model-View-ViewModel)

## Project Structure
- **Models**:
  - `Task`: Represents individual tasks with properties for description, completion status, and unique IDs.
  - `Tasks`: An ObservableObject managing the list of tasks, handling CRUD operations, and saving data.
- **Views**:
  - `ListView`: The main view displaying active and completed tasks.
  - `ListTaskRow`: A reusable row component for displaying individual tasks.
  - `AddTask`: A form view for adding new tasks.
- **Helpers**: Includes logic for persistent storage and user interactions.

## How It Works

1. **Add Tasks**:
   - Tap the "Add" button to create a new task.
   - Enter a task description and save it.
2. **Toggle Completion**:
   - Tap a task to toggle its completion status.
   - Completed tasks are displayed with a strikethrough effect and moved to the "Completed" section.
3. **Delete Tasks**:
   - Swipe left on a task to delete it.
4. **Persistent Storage**:
   - Tasks are automatically saved locally using `UserDefaults`.
   - All tasks persist across app launches.

## How to Use
1. Launch the app to view your tasks categorized into "Active" and "Completed".
2. Tap the "Add" button to create a new task.
3. Toggle a task's completion status by tapping on it.
4. Swipe left on a task to delete it.

## Getting Started

### Prerequisites
- **Xcode**: Version 12.0 or higher
- **iOS**: Deployment target of iOS 14.0 or higher

### Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/emirokay/ToDoApp.git
2. Navigate to the Project Directory:
	```bash
	cd ToDoApp
3. Open in Xcode:
	```bash
	open ToDoApp.xcodeproj
4. Build and Run:
- Select a simulator or connect a physical device.
- Click the 'Run' button in Xcode to build and launch the app.

## Requirements
- Xcode: Version 12.0 or higher
- iOS: Deployment target of iOS 14.0 or higher

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your proposed changes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Screenshots
<img width="550" alt="Screenshot 2024-11-27 at 22 07 02" src="https://github.com/user-attachments/assets/91549e69-ee69-40aa-9f7b-cbe660307c71">
<img width="550" alt="Screenshot 2024-11-27 at 22 07 13" src="https://github.com/user-attachments/assets/69308191-9683-4bc5-a246-b5bcd616342e">
<img width="550" alt="Screenshot 2024-11-27 at 22 07 18" src="https://github.com/user-attachments/assets/17df2a31-6dcb-4ea8-b326-de07ca28a4c7">
<img width="550" alt="Screenshot 2024-11-27 at 22 07 35" src="https://github.com/user-attachments/assets/1c7b56eb-98de-4cf9-b151-a66b6d8fd149">
<img width="550" alt="Screenshot 2024-11-27 at 22 07 49" src="https://github.com/user-attachments/assets/c1565256-d6ec-4def-92b1-6e3205811309">
