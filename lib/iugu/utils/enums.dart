/// Tipo de intervalos de plano
library;

enum PlanIntervalType {
  /// Plano com um ciclo semanal

  weekly,

  /// Plano com um ciclo mensal

  monthly
}

/// Moedas suportadas

enum CurrencyType {
  /// Moeda brasileira

  brl
}

/// Bancos disponíveis

class AvailableBanks extends Enum<int> {
  // CaixaEconomicaFederal = 104,
  //  BancoDoBrasil = 001,
  //  Bradesco = 237,
  //   Itau = 341,
  //   Santander = 033,
  //    HSBC = 399

  const AvailableBanks._internal(int val, {String name = ''})
      : super(val, name);

  static const caixaEconomicaFederal = 104;
  static const bancoDoBrasil = 001;
  static const bradesco = 237;
  static const itau = 341;
  static const santander = 033;
  static const hsbc = 399;
}

/// Status da fatura

enum InvoiceAvailableStatus {
  paid,
  canceled,
  partiallyPaid,
  pending,
  draft,
  refunded,
  expired
}

/// Person type
enum PersonType {
  /// Pessoa Jurídica
  corporateEntity,

  /// Pessoa física
  individualPerson
}

/// Bank account type
enum BankAccountType {
  /// Conta poupança
  savingAccount,

  /// Conta Corrente
  checkingAccount
}

enum BankAccountTypeAbbreviation {
  /// Conta poupança
  cp,

  /// Conta Corrente
  cc
}

/// Metodos de pagamento suportado
enum PaymentMethod {
  /// Todos os tipos de pagamentos serão aceitos
  all,

  /// Cartão de crédito

  creditCard,

  /// Boleto bancário
  bankSlip
}

/// Tipo de Ordenaçãp

enum ResultOrderType {
  /// Menor para o maior
  ascending,

  /// Maior para o menor
  descending
}

/// Campos com Ordenações suportadas
enum FieldSort {
  id,
  status,
  createAt,
  updateAt,
  amount,
  accountName,
  name,
}

/// The new baseclass for all enum's
abstract class Enum<T> {
  /// The value that this enum-member is holding
  final T _value;

  /// The optional name of this enum-member, is only used in [toString()]
  final String _name;
  const Enum(this._value, this._name);

  // Returns the holded value
  T get value => _value;

  // Returns the name, maybe null
  String get name => _name;

  /// Returns string representation of the enum
  ///
  /// if [_name] is a non-null string, then its
  /// used in the result, otherwise not
  @override
  toString() {
    return 'Enum.$runtimeType.$_name:$_value';
  }
}
