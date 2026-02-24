 // Q1
// 1. Notes App – Organize Your Notes
// You are building a simple notes app where users can write and manage their notes.- Each note should have a title, some content, and the date it was created.- The app should allow creating new notes.- The app should allow listing all notes.- The app should allow searching for a note by its title.
// Q1
class Note {
  String title;
  String content;
  DateTime createdAt;

  Note(this.title, this.content) : createdAt = DateTime.now();
}

List<Note> notes = [];

void addNote(String title, String content) {
  notes.add(Note(title, content));
  print(' Note added: $title');
}

void listNotes() {
  for (var note in notes) {
    print(' ${note.title} - ${note.content}');
  }
}

void searchByTitle(String query) {
    final results = notes
        .where((n) => n.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (results.isEmpty) {
      print(' No notes found for "$query"\n');
      return;
    }
}

// void searchNote(String title) {
//   var result = notes.where((n) => n.title.contains(title)).toList();
//   for (var note in result) {
//     print(' Found: ${note.title} - ${note.content}');
//   }
// }

void main() {
  addNote('Shopping', 'Milk, Eggs, Bread');
  addNote('Meeting', 'Discuss Q4 goals');
  addNote('Flutter Tips', 'Use const widgets');

  print('\n--- All Notes ---');
  listNotes();

  print('\n--- Search ---');
  searchByTitle('Shopping');
}
