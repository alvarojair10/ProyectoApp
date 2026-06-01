import '../database.dart';

class RegistroTable extends SupabaseTable<RegistroRow> {
  @override
  String get tableName => 'registro';

  @override
  RegistroRow createRow(Map<String, dynamic> data) => RegistroRow(data);
}

class RegistroRow extends SupabaseDataRow {
  RegistroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RegistroTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get tel => getField<String>('tel')!;
  set tel(String value) => setField<String>('tel', value);

  String get correo => getField<String>('correo')!;
  set correo(String value) => setField<String>('correo', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
