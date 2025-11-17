import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'spacing.dart';
import 'spacing_data.dart';

/// Create a new list of [widget]s but inserting a [Gap] width the given
/// [spaceBetween] space widget between each child of the [children] list.
List<Widget> spacedWidgets({
  required List<Widget> children,
  required double spaceBetween,
}) {
  if (children.isEmpty) return const <Widget>[];
  return Iterable.generate(children.length * 2 - 1, (i) {
    if ((i % 2) == 1) {
      return Gap(spaceBetween);
    }
    return children[i ~/ 2];
  }).toList();
}

/// A widget that behaves like a [Flex], but with the possibility to
/// add a [spaceBetween] children, and a [padding] around them.
///
/// See also:
///
///  * [SpacedColumn], the space version of the [Column] equivalent.
///  * [SpacedRow], the space version of the [Row] equivalent.
///  * [Flex], the base widget this one is based on.
class SpacedFlex extends StatelessWidget {
  /// The amount of space between children.
  ///
  /// If null, then [spaceBetween] should be defined.
  final SpaceSize? sizeBetween;

  /// The amount of space between children.
  ///
  /// If null, then [sizeBetween] should be defined.
  final double? spaceBetween;

  /// The amount of space around children.
  final EdgeInsets? padding;

  /// {@macro flutter.widgets.Flex.children}
  final List<Widget>? children;

  /// {@macro flutter.widgets.Flex.direction}
  final Axis direction;

  /// {@macro flutter.widgets.Flex.mainAxisAlignment}
  final MainAxisAlignment mainAxisAlignment;

  /// {@macro flutter.widgets.Flex.mainAxisSize}
  final MainAxisSize mainAxisSize;

  /// {@macro flutter.widgets.Flex.crossAxisAlignment}
  final CrossAxisAlignment crossAxisAlignment;

  /// {@macro flutter.widgets.Flex.textDirection}
  final TextDirection? textDirection;

  /// {@macro flutter.widgets.Flex.verticalDirection}
  final VerticalDirection verticalDirection;

  /// {@macro flutter.widgets.Flex.textBaseline}
  final TextBaseline? textBaseline;

  /// {@macro flutter.widgets.Flex.clipBehavior}
  final Clip clipBehavior;

  /// Creates a flex layout with spaces.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  ///
  /// The [spaceBetween] will add this amount of space between all children.
  const SpacedFlex({
    super.key,
    required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.spaceBetween,
    this.padding,
  }) : sizeBetween = null;

  /// Creates a flex layout with an `extraSmall` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.extraSmall({
    super.key,
    required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.extraSmall,
        spaceBetween = null;

  /// Creates a flex layout with a `small` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.small({
    super.key,
    required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.small,
        spaceBetween = null;

  /// Creates a flex layout with a `semiSmall` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.semiSmall({
    super.key,
    required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.semiSmall,
        spaceBetween = null;

  /// Creates a flex layout with a `normal` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.normal({
    super.key,
    required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.normal,
        spaceBetween = null;

  /// Creates a flex layout with a `semiBig` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.semiBig({
    super.key,
    required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.semiBig,
        spaceBetween = null;

  /// Creates a flex layout with a `big` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.big({
    super.key,
    required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.big,
        spaceBetween = null;

  /// Creates a flex layout with an `extraBig` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.extraBig({
    super.key,
    required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.extraBig,
        spaceBetween = null;

  @override
  Widget build(BuildContext context) {
    var spaceBetween = this.spaceBetween;
    if (spaceBetween == null) {
      var sizeBetween = this.sizeBetween ?? SpaceSize.normal;
      spaceBetween = sizeBetween.toPoints(context);
    }

    Widget result = Flex(
      clipBehavior: clipBehavior,
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: spacedWidgets(
        children: children ?? const <Widget>[],
        spaceBetween: spaceBetween,
      ),
    );

    if (padding != null && padding != EdgeInsets.zero) {
      result = Padding(
        padding: padding!,
        child: result,
      );
    }

    return result;
  }
}

/// A widget that behaves like a [Column], but with the possibility to
/// add a [spaceBetween] children, and a [padding] around them.
///
/// See also:
///
///  * [SpacedRow], the space version of the [Row] equivalent.
///  * [SpacedFlex], the base widget this one is based on.
class SpacedColumn extends SpacedFlex {
  const SpacedColumn({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.spaceBetween,
    super.padding,
    super.clipBehavior,
  }) : super(
          direction: Axis.vertical,
        );

  const SpacedColumn.extraSmall({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.extraSmall(
          direction: Axis.vertical,
        );

  const SpacedColumn.small({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.small(
          direction: Axis.vertical,
        );

  const SpacedColumn.semiSmall({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.semiSmall(
          direction: Axis.vertical,
        );

  const SpacedColumn.normal({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.normal(
          direction: Axis.vertical,
        );

  const SpacedColumn.semiBig({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.semiBig(
          direction: Axis.vertical,
        );

  const SpacedColumn.big({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.big(
          direction: Axis.vertical,
        );

  const SpacedColumn.extraBig({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.extraBig(
          direction: Axis.vertical,
        );
}

/// A widget that behaves like a [Row], but with the possibility to
/// add a [spaceBetween] children, and a [padding] around them.
///
/// See also:
///
///  * [SpacedRow], the space version of the [Row] equivalent.
///  * [SpacedFlex], the base widget this one is based on.
class SpacedRow extends SpacedFlex {
  const SpacedRow({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.spaceBetween,
    super.padding,
    super.clipBehavior,
  }) : super(
          direction: Axis.horizontal,
        );

  const SpacedRow.extraSmall({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.extraSmall(
          direction: Axis.horizontal,
        );

  const SpacedRow.small({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.small(
          direction: Axis.horizontal,
        );

  const SpacedRow.semiSmall({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.semiSmall(
          direction: Axis.horizontal,
        );

  const SpacedRow.normal({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.normal(
          direction: Axis.horizontal,
        );

  const SpacedRow.semiBig({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.semiBig(
          direction: Axis.horizontal,
        );

  const SpacedRow.big({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.big(
          direction: Axis.horizontal,
        );

  const SpacedRow.extraBig({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
    super.padding,
    super.clipBehavior,
  }) : super.extraBig(
          direction: Axis.horizontal,
        );
}
