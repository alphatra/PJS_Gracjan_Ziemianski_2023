import '../database.dart';

class QuestionsTable extends SupabaseTable<QuestionsRow> {
  @override
  String get tableName => 'questions';

  @override
  QuestionsRow createRow(Map<String, dynamic> data) => QuestionsRow(data);
}

class QuestionsRow extends SupabaseDataRow {
  QuestionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => QuestionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get pollId => getField<int>('poll_id')!;
  set pollId(int value) => setField<int>('poll_id', value);

  String get questionText => getField<String>('question_text')!;
  set questionText(String value) => setField<String>('question_text', value);
}
