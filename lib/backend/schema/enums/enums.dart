import 'package:collection/collection.dart';

enum OrderStatus {
  draft,
  submitted,
  paid,
  fulfilling,
  shipped,
  delivered,
  closed,
  canceled,
}

enum PaymentStatus {
  pending,
  processing,
  succeeded,
  failed,
  canceled,
}

enum Parts {
  MOTOR,
  CONTACTOR,
  CAPACITOR,
}

enum SettingKeys {
  super_admin,
  shipping,
  tax,
  technical_admin,
}

enum ActionType {
  navigate,
  navigateWithData,
  showVideo,
}

enum TargetPage {
  needAssistant,
  contactUs,
  otherVideo,
  google,
}

enum MotorRotationDirection {
  Reversible,
}

enum CapacitorShape {
  Oval,
  Round,
}

enum CapacitorType {
  Single,
  Dual,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (OrderStatus):
      return OrderStatus.values.deserialize(value) as T?;
    case (PaymentStatus):
      return PaymentStatus.values.deserialize(value) as T?;
    case (Parts):
      return Parts.values.deserialize(value) as T?;
    case (SettingKeys):
      return SettingKeys.values.deserialize(value) as T?;
    case (ActionType):
      return ActionType.values.deserialize(value) as T?;
    case (TargetPage):
      return TargetPage.values.deserialize(value) as T?;
    case (MotorRotationDirection):
      return MotorRotationDirection.values.deserialize(value) as T?;
    case (CapacitorShape):
      return CapacitorShape.values.deserialize(value) as T?;
    case (CapacitorType):
      return CapacitorType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
