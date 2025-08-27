import 'package:expense_tracker_test/database/database_sync.dart' show DatabaseSync;
import 'package:get_it/get_it.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/src/type.dart';

abstract class Repository {
  Future<void> insert(String ref, {required Map<String, dynamic> data, String? key});
}

mixin RepositoryMixin on DatabaseSync {
  Database get database => GetIt.I.get<Database>();

  void listen<K, V>(TransactionRecordChangeListener<K, V> listener) {
    StoreRef<K, V>(collectionName).addOnChangesListener(database, listener);
  }

  Future<Object?> insert({required Map<String, dynamic> data, String? key}) =>
      StoreRef(collectionName).record(key ?? '${collectionName}_${DateTime.now().toUtc()}').put(database, data);

  Future<List<Key?>> inserts({required List<Map<String, dynamic>> data, List<String>? keys}) => StoreRef(
    collectionName,
  ).records(keys ?? data.map((e) => '${collectionName}_${DateTime.now().toUtc()}')).add(database, data);

  Future<int> delete([Finder? finder]) => StoreRef(collectionName).delete(database, finder: finder);

  Future<int> update<T>(Map<String, dynamic> data, [Finder? finder]) =>
      StoreRef(collectionName).update(database, data, finder: finder);

  Future<RecordSnapshot<String, Map<String, Object?>>?> findExactOne(Finder finder) =>
      stringMapStoreFactory.store(collectionName).findFirst(database, finder: finder);

  Future<List<RecordSnapshot>> find({String keyPrefix = '', Finder? finder}) async {
    // Fetch all records
    final records = await stringMapStoreFactory.store(collectionName).find(database, finder: finder ?? Finder());

    // Filter records where key starts with the prefix
    return records.where((record) => record.key.toString().startsWith(keyPrefix)).toList();
  }

  Future<int> count() => stringMapStoreFactory.store(collectionName).count(database);
}
