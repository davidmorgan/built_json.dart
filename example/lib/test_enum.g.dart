// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-01-05T16:23:30.760Z

part of test_enum;

// **************************************************************************
// Generator: BuiltJsonGenerator
// Target: library test_enum
// **************************************************************************

Serializer<TestEnum> _$testEnumSerializer = new _$TestEnumSerializer();

class _$TestEnumSerializer implements Serializer<TestEnum> {
  final bool structured = false;
  final Iterable<Type> types = new BuiltList<Type>([TestEnum]);
  final String wireName = 'TestEnum';

  @override
  Object serialize(Serializers serializers, TestEnum object,
      {GenericType genericType: const GenericType()}) {
    return object.name;
  }

  @override
  TestEnum deserialize(Serializers serializers, Object object,
      {GenericType genericType: const GenericType()}) {
    return TestEnum.valueOf(object);
  }
}

// **************************************************************************
// Generator: EnumClassGenerator
// Target: class TestEnum
// **************************************************************************

const TestEnum _$yes = const TestEnum._('yes');
const TestEnum _$no = const TestEnum._('no');
const TestEnum _$maybe = const TestEnum._('maybe');

TestEnum _$valueOf(String name) {
  switch (name) {
    case 'yes':
      return _$yes;
    case 'no':
      return _$no;
    case 'maybe':
      return _$maybe;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TestEnum> _$values =
    new BuiltSet<TestEnum>(const [_$yes, _$no, _$maybe,]);
