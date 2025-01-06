class PaggedResponseMessage<T> {
  /// Total de items existentes
  int totalItems;

  /// Total de items retornados
  int get totalItemsReturned => items.length;

  /// Agência da Conta
  /// Formatos com validação automática(9999-D, 9999)
  List<T> items;

  PaggedResponseMessage({
    required this.totalItems,
    required this.items,
  });

  @override
  String toString() =>
      'PaggedResponseMessage(totalItems: $totalItems, items: $items)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaggedResponseMessage<T> && other.totalItems == totalItems;
  }

  @override
  int get hashCode => totalItems.hashCode ^ items.hashCode;
}
