import 'package:flutter/foundation.dart';
import '../models/item_model.dart';
import '../data/item_repository.dart';

class ItemProvider with ChangeNotifier {
  final ItemRepository _repository = ItemRepository();
  List<ItemModel> _items = [];
  bool _isLoading = false;
  String? _error;

  // Getters
  List<ItemModel> get items => _items;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Initialize and fetch items
  Future<void> fetchItems() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _items = await _repository.getItems();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      _error = 'Failed to load items: ${e.toString()}';
      notifyListeners();
    }
  }

  // Get a single item by ID
  ItemModel? getItemById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (e) {
      return null;
    }
  }
}