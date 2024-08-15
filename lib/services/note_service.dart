import 'package:hive/hive.dart';
import 'package:notes_sphere/models/note_model.dart';
import 'package:uuid/uuid.dart';

class NoteService {
  List<Note> allNotes = [
    Note(
      id: const Uuid().v4(),
      title: "Meeting Notes",
      category: "Work",
      content:
          "Discussed project deadlines and deliverables. Assigned tasks to team members and set up follow-up meetings to track progress.",
      date: DateTime.now(),
    ),
    Note(
      id: const Uuid().v4(),
      title: "Grocery List",
      category: "Personal",
      content:
          "Bought milk, eggs, bread, fruits, and vegetables from the local grocery store. Also added some snacks for the week.",
      date: DateTime.now(),
    ),
    Note(
      id: const Uuid().v4(),
      title: "Book Recommendations",
      category: "Hobby",
      content:
          "Recently read 'Sapiens' by Yuval Noah Harari, which offered fascinating insights into the history of humankind. Also enjoyed 'Atomic Habits' by James Clear, a practical guide to building good habits and breaking bad ones.",
      date: DateTime.now(),
    ),
  ];

  //Create the database reference for notes
  final _myBox = Hive.box("notes");

  //check weather the user is new user
  Future<bool> isNewUser() async {
    return _myBox.isEmpty;
  }

  //Method to create the initial notes if the box is empty
  Future<void> createdInitialNotes() async {
    if (_myBox.isEmpty) {
      await _myBox.put("notes", allNotes);
    }
  }

  // Method to load the notes
  Future<List<Note>> loadNotes() async {
    final dynamic notes = _myBox.get("notes");

    if (notes != null && notes is List<dynamic>) {
      return notes.cast<Note>().toList();
    }

    return [];
  }

  //loop througn all notes and create an object where the key is the category and the value is the notes in that category

  Map<String, List<Note>> getNotesByCategoryMap(List<Note> allNotes) {
    final Map<String, List<Note>> notesBycategory = {};

    for (final note in allNotes) {
      if (notesBycategory.containsKey(note.category)) {
        notesBycategory[note.category]!.add(note);
      } else {
        notesBycategory[note.category] = [note];
      }
    }

    return notesBycategory;
  }

  //Method to get the notes according to the category
  Future<List<Note>> getNotesByCategoryName(String category) async {
    final dynamic allNotes = await _myBox.get("notes");
    final List<Note> notes = [];

    for (final note in allNotes) {
      if (note.category == category) {
        notes.add(note);
      }
    }

    return notes;
  }
}
