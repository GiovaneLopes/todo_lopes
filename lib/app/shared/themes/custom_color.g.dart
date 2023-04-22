part of './themes.dart';

const primaryBlue = Color(0xFF039EF6);
const textColor = Color(0xFF444444);
const salmonColor = Color(0xFFFF8282);
const purpleColor = Color(0xFF3F67B5);
const orangeColor = Color(0xFFFF8A00);
const pinkColor = Color(0xFFD42EA5);
const greenColor = Color(0xFF2DA04D);
const secondaryGreenColor = Color(0xFFC5E6C6);
const greyTextcolor = Color(0xFF7F7F7F);

CustomColors lightCustomColors = const CustomColors(
  sourcePrimaryblue: Color(0xFF039EF6),
  primaryblue: Color(0xFF00639C),
  onPrimaryblue: Color(0xFFFFFFFF),
  primaryblueContainer: Color(0xFFCFE5FF),
  onPrimaryblueContainer: Color(0xFF001D33),
  sourceTextcolor: Color(0xFF444444),
  textcolor: Color(0xFF006874),
  onTextcolor: Color(0xFFFFFFFF),
  textcolorContainer: Color(0xFF97F0FF),
  onTextcolorContainer: Color(0xFF001F24),
  sourceSalmoncolor: Color(0xFFFF8282),
  salmoncolor: Color(0xFFA23C3E),
  onSalmoncolor: Color(0xFFFFFFFF),
  salmoncolorContainer: Color(0xFFFFDAD8),
  onSalmoncolorContainer: Color(0xFF410007),
  sourcePurplecolor: Color(0xFF3F67B5),
  purplecolor: Color(0xFF335CA9),
  onPurplecolor: Color(0xFFFFFFFF),
  purplecolorContainer: Color(0xFFD9E2FF),
  onPurplecolorContainer: Color(0xFF001A43),
  sourceOrangecolor: Color(0xFFFF8A00),
  orangecolor: Color(0xFF914C00),
  onOrangecolor: Color(0xFFFFFFFF),
  orangecolorContainer: Color(0xFFFFDCC4),
  onOrangecolorContainer: Color(0xFF2F1500),
  sourcePinkcolor: Color(0xFFD42EA5),
  pinkcolor: Color(0xFFB20089),
  onPinkcolor: Color(0xFFFFFFFF),
  pinkcolorContainer: Color(0xFFFFD8EB),
  onPinkcolorContainer: Color(0xFF3C002C),
  sourceGreencolor: Color(0xFF2DA04D),
  greencolor: Color(0xFF006E2C),
  onGreencolor: Color(0xFFFFFFFF),
  greencolorContainer: Color(0xFF8BFA9B),
  onGreencolorContainer: Color(0xFF002108),
  sourceSecondarygreencolor: Color(0xFFC5E6C6),
  secondarygreencolor: Color(0xFF106D34),
  onSecondarygreencolor: Color(0xFFFFFFFF),
  secondarygreencolorContainer: Color(0xFF9FF6AE),
  onSecondarygreencolorContainer: Color(0xFF00210B),
  sourceGreytextcolor: Color(0xFF7F7F7F),
  greytextcolor: Color(0xFF006874),
  onGreytextcolor: Color(0xFFFFFFFF),
  greytextcolorContainer: Color(0xFF97F0FF),
  onGreytextcolorContainer: Color(0xFF001F24),
);

CustomColors darkCustomColors = const CustomColors(
  sourcePrimaryblue: Color(0xFF039EF6),
  primaryblue: Color(0xFF98CBFF),
  onPrimaryblue: Color(0xFF003354),
  primaryblueContainer: Color(0xFF004A77),
  onPrimaryblueContainer: Color(0xFFCFE5FF),
  sourceTextcolor: Color(0xFF444444),
  textcolor: Color(0xFF4FD8EB),
  onTextcolor: Color(0xFF00363D),
  textcolorContainer: Color(0xFF004F58),
  onTextcolorContainer: Color(0xFF97F0FF),
  sourceSalmoncolor: Color(0xFFFF8282),
  salmoncolor: Color(0xFFFFB3B1),
  onSalmoncolor: Color(0xFF640B15),
  salmoncolorContainer: Color(0xFF832429),
  onSalmoncolorContainer: Color(0xFFFFDAD8),
  sourcePurplecolor: Color(0xFF3F67B5),
  purplecolor: Color(0xFFAFC6FF),
  onPurplecolor: Color(0xFF002D6C),
  purplecolorContainer: Color(0xFF124490),
  onPurplecolorContainer: Color(0xFFD9E2FF),
  sourceOrangecolor: Color(0xFFFF8A00),
  orangecolor: Color(0xFFFFB77F),
  onOrangecolor: Color(0xFF4E2600),
  orangecolorContainer: Color(0xFF6F3900),
  onOrangecolorContainer: Color(0xFFFFDCC4),
  sourcePinkcolor: Color(0xFFD42EA5),
  pinkcolor: Color(0xFFFFAEDC),
  onPinkcolor: Color(0xFF600049),
  pinkcolorContainer: Color(0xFF880068),
  onPinkcolorContainer: Color(0xFFFFD8EB),
  sourceGreencolor: Color(0xFF2DA04D),
  greencolor: Color(0xFF6EDD82),
  onGreencolor: Color(0xFF003913),
  greencolorContainer: Color(0xFF00531F),
  onGreencolorContainer: Color(0xFF8BFA9B),
  sourceSecondarygreencolor: Color(0xFFC5E6C6),
  secondarygreencolor: Color(0xFF84D994),
  onSecondarygreencolor: Color(0xFF003917),
  secondarygreencolorContainer: Color(0xFF005224),
  onSecondarygreencolorContainer: Color(0xFF9FF6AE),
  sourceGreytextcolor: Color(0xFF7F7F7F),
  greytextcolor: Color(0xFF4FD8EB),
  onGreytextcolor: Color(0xFF00363D),
  greytextcolorContainer: Color(0xFF004F58),
  onGreytextcolorContainer: Color(0xFF97F0FF),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourcePrimaryblue,
    required this.primaryblue,
    required this.onPrimaryblue,
    required this.primaryblueContainer,
    required this.onPrimaryblueContainer,
    required this.sourceTextcolor,
    required this.textcolor,
    required this.onTextcolor,
    required this.textcolorContainer,
    required this.onTextcolorContainer,
    required this.sourceSalmoncolor,
    required this.salmoncolor,
    required this.onSalmoncolor,
    required this.salmoncolorContainer,
    required this.onSalmoncolorContainer,
    required this.sourcePurplecolor,
    required this.purplecolor,
    required this.onPurplecolor,
    required this.purplecolorContainer,
    required this.onPurplecolorContainer,
    required this.sourceOrangecolor,
    required this.orangecolor,
    required this.onOrangecolor,
    required this.orangecolorContainer,
    required this.onOrangecolorContainer,
    required this.sourcePinkcolor,
    required this.pinkcolor,
    required this.onPinkcolor,
    required this.pinkcolorContainer,
    required this.onPinkcolorContainer,
    required this.sourceGreencolor,
    required this.greencolor,
    required this.onGreencolor,
    required this.greencolorContainer,
    required this.onGreencolorContainer,
    required this.sourceSecondarygreencolor,
    required this.secondarygreencolor,
    required this.onSecondarygreencolor,
    required this.secondarygreencolorContainer,
    required this.onSecondarygreencolorContainer,
    required this.sourceGreytextcolor,
    required this.greytextcolor,
    required this.onGreytextcolor,
    required this.greytextcolorContainer,
    required this.onGreytextcolorContainer,
  });

  final Color? sourcePrimaryblue;
  final Color? primaryblue;
  final Color? onPrimaryblue;
  final Color? primaryblueContainer;
  final Color? onPrimaryblueContainer;
  final Color? sourceTextcolor;
  final Color? textcolor;
  final Color? onTextcolor;
  final Color? textcolorContainer;
  final Color? onTextcolorContainer;
  final Color? sourceSalmoncolor;
  final Color? salmoncolor;
  final Color? onSalmoncolor;
  final Color? salmoncolorContainer;
  final Color? onSalmoncolorContainer;
  final Color? sourcePurplecolor;
  final Color? purplecolor;
  final Color? onPurplecolor;
  final Color? purplecolorContainer;
  final Color? onPurplecolorContainer;
  final Color? sourceOrangecolor;
  final Color? orangecolor;
  final Color? onOrangecolor;
  final Color? orangecolorContainer;
  final Color? onOrangecolorContainer;
  final Color? sourcePinkcolor;
  final Color? pinkcolor;
  final Color? onPinkcolor;
  final Color? pinkcolorContainer;
  final Color? onPinkcolorContainer;
  final Color? sourceGreencolor;
  final Color? greencolor;
  final Color? onGreencolor;
  final Color? greencolorContainer;
  final Color? onGreencolorContainer;
  final Color? sourceSecondarygreencolor;
  final Color? secondarygreencolor;
  final Color? onSecondarygreencolor;
  final Color? secondarygreencolorContainer;
  final Color? onSecondarygreencolorContainer;
  final Color? sourceGreytextcolor;
  final Color? greytextcolor;
  final Color? onGreytextcolor;
  final Color? greytextcolorContainer;
  final Color? onGreytextcolorContainer;

  @override
  CustomColors copyWith({
    Color? sourcePrimaryblue,
    Color? primaryblue,
    Color? onPrimaryblue,
    Color? primaryblueContainer,
    Color? onPrimaryblueContainer,
    Color? sourceTextcolor,
    Color? textcolor,
    Color? onTextcolor,
    Color? textcolorContainer,
    Color? onTextcolorContainer,
    Color? sourceSalmoncolor,
    Color? salmoncolor,
    Color? onSalmoncolor,
    Color? salmoncolorContainer,
    Color? onSalmoncolorContainer,
    Color? sourcePurplecolor,
    Color? purplecolor,
    Color? onPurplecolor,
    Color? purplecolorContainer,
    Color? onPurplecolorContainer,
    Color? sourceOrangecolor,
    Color? orangecolor,
    Color? onOrangecolor,
    Color? orangecolorContainer,
    Color? onOrangecolorContainer,
    Color? sourcePinkcolor,
    Color? pinkcolor,
    Color? onPinkcolor,
    Color? pinkcolorContainer,
    Color? onPinkcolorContainer,
    Color? sourceGreencolor,
    Color? greencolor,
    Color? onGreencolor,
    Color? greencolorContainer,
    Color? onGreencolorContainer,
    Color? sourceSecondarygreencolor,
    Color? secondarygreencolor,
    Color? onSecondarygreencolor,
    Color? secondarygreencolorContainer,
    Color? onSecondarygreencolorContainer,
    Color? sourceGreytextcolor,
    Color? greytextcolor,
    Color? onGreytextcolor,
    Color? greytextcolorContainer,
    Color? onGreytextcolorContainer,
  }) {
    return CustomColors(
      sourcePrimaryblue: sourcePrimaryblue ?? this.sourcePrimaryblue,
      primaryblue: primaryblue ?? this.primaryblue,
      onPrimaryblue: onPrimaryblue ?? this.onPrimaryblue,
      primaryblueContainer: primaryblueContainer ?? this.primaryblueContainer,
      onPrimaryblueContainer:
          onPrimaryblueContainer ?? this.onPrimaryblueContainer,
      sourceTextcolor: sourceTextcolor ?? this.sourceTextcolor,
      textcolor: textcolor ?? this.textcolor,
      onTextcolor: onTextcolor ?? this.onTextcolor,
      textcolorContainer: textcolorContainer ?? this.textcolorContainer,
      onTextcolorContainer: onTextcolorContainer ?? this.onTextcolorContainer,
      sourceSalmoncolor: sourceSalmoncolor ?? this.sourceSalmoncolor,
      salmoncolor: salmoncolor ?? this.salmoncolor,
      onSalmoncolor: onSalmoncolor ?? this.onSalmoncolor,
      salmoncolorContainer: salmoncolorContainer ?? this.salmoncolorContainer,
      onSalmoncolorContainer:
          onSalmoncolorContainer ?? this.onSalmoncolorContainer,
      sourcePurplecolor: sourcePurplecolor ?? this.sourcePurplecolor,
      purplecolor: purplecolor ?? this.purplecolor,
      onPurplecolor: onPurplecolor ?? this.onPurplecolor,
      purplecolorContainer: purplecolorContainer ?? this.purplecolorContainer,
      onPurplecolorContainer:
          onPurplecolorContainer ?? this.onPurplecolorContainer,
      sourceOrangecolor: sourceOrangecolor ?? this.sourceOrangecolor,
      orangecolor: orangecolor ?? this.orangecolor,
      onOrangecolor: onOrangecolor ?? this.onOrangecolor,
      orangecolorContainer: orangecolorContainer ?? this.orangecolorContainer,
      onOrangecolorContainer:
          onOrangecolorContainer ?? this.onOrangecolorContainer,
      sourcePinkcolor: sourcePinkcolor ?? this.sourcePinkcolor,
      pinkcolor: pinkcolor ?? this.pinkcolor,
      onPinkcolor: onPinkcolor ?? this.onPinkcolor,
      pinkcolorContainer: pinkcolorContainer ?? this.pinkcolorContainer,
      onPinkcolorContainer: onPinkcolorContainer ?? this.onPinkcolorContainer,
      sourceGreencolor: sourceGreencolor ?? this.sourceGreencolor,
      greencolor: greencolor ?? this.greencolor,
      onGreencolor: onGreencolor ?? this.onGreencolor,
      greencolorContainer: greencolorContainer ?? this.greencolorContainer,
      onGreencolorContainer:
          onGreencolorContainer ?? this.onGreencolorContainer,
      sourceSecondarygreencolor:
          sourceSecondarygreencolor ?? this.sourceSecondarygreencolor,
      secondarygreencolor: secondarygreencolor ?? this.secondarygreencolor,
      onSecondarygreencolor:
          onSecondarygreencolor ?? this.onSecondarygreencolor,
      secondarygreencolorContainer:
          secondarygreencolorContainer ?? this.secondarygreencolorContainer,
      onSecondarygreencolorContainer:
          onSecondarygreencolorContainer ?? this.onSecondarygreencolorContainer,
      sourceGreytextcolor: sourceGreytextcolor ?? this.sourceGreytextcolor,
      greytextcolor: greytextcolor ?? this.greytextcolor,
      onGreytextcolor: onGreytextcolor ?? this.onGreytextcolor,
      greytextcolorContainer:
          greytextcolorContainer ?? this.greytextcolorContainer,
      onGreytextcolorContainer:
          onGreytextcolorContainer ?? this.onGreytextcolorContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourcePrimaryblue:
          Color.lerp(sourcePrimaryblue, other.sourcePrimaryblue, t),
      primaryblue: Color.lerp(primaryblue, other.primaryblue, t),
      onPrimaryblue: Color.lerp(onPrimaryblue, other.onPrimaryblue, t),
      primaryblueContainer:
          Color.lerp(primaryblueContainer, other.primaryblueContainer, t),
      onPrimaryblueContainer:
          Color.lerp(onPrimaryblueContainer, other.onPrimaryblueContainer, t),
      sourceTextcolor: Color.lerp(sourceTextcolor, other.sourceTextcolor, t),
      textcolor: Color.lerp(textcolor, other.textcolor, t),
      onTextcolor: Color.lerp(onTextcolor, other.onTextcolor, t),
      textcolorContainer:
          Color.lerp(textcolorContainer, other.textcolorContainer, t),
      onTextcolorContainer:
          Color.lerp(onTextcolorContainer, other.onTextcolorContainer, t),
      sourceSalmoncolor:
          Color.lerp(sourceSalmoncolor, other.sourceSalmoncolor, t),
      salmoncolor: Color.lerp(salmoncolor, other.salmoncolor, t),
      onSalmoncolor: Color.lerp(onSalmoncolor, other.onSalmoncolor, t),
      salmoncolorContainer:
          Color.lerp(salmoncolorContainer, other.salmoncolorContainer, t),
      onSalmoncolorContainer:
          Color.lerp(onSalmoncolorContainer, other.onSalmoncolorContainer, t),
      sourcePurplecolor:
          Color.lerp(sourcePurplecolor, other.sourcePurplecolor, t),
      purplecolor: Color.lerp(purplecolor, other.purplecolor, t),
      onPurplecolor: Color.lerp(onPurplecolor, other.onPurplecolor, t),
      purplecolorContainer:
          Color.lerp(purplecolorContainer, other.purplecolorContainer, t),
      onPurplecolorContainer:
          Color.lerp(onPurplecolorContainer, other.onPurplecolorContainer, t),
      sourceOrangecolor:
          Color.lerp(sourceOrangecolor, other.sourceOrangecolor, t),
      orangecolor: Color.lerp(orangecolor, other.orangecolor, t),
      onOrangecolor: Color.lerp(onOrangecolor, other.onOrangecolor, t),
      orangecolorContainer:
          Color.lerp(orangecolorContainer, other.orangecolorContainer, t),
      onOrangecolorContainer:
          Color.lerp(onOrangecolorContainer, other.onOrangecolorContainer, t),
      sourcePinkcolor: Color.lerp(sourcePinkcolor, other.sourcePinkcolor, t),
      pinkcolor: Color.lerp(pinkcolor, other.pinkcolor, t),
      onPinkcolor: Color.lerp(onPinkcolor, other.onPinkcolor, t),
      pinkcolorContainer:
          Color.lerp(pinkcolorContainer, other.pinkcolorContainer, t),
      onPinkcolorContainer:
          Color.lerp(onPinkcolorContainer, other.onPinkcolorContainer, t),
      sourceGreencolor: Color.lerp(sourceGreencolor, other.sourceGreencolor, t),
      greencolor: Color.lerp(greencolor, other.greencolor, t),
      onGreencolor: Color.lerp(onGreencolor, other.onGreencolor, t),
      greencolorContainer:
          Color.lerp(greencolorContainer, other.greencolorContainer, t),
      onGreencolorContainer:
          Color.lerp(onGreencolorContainer, other.onGreencolorContainer, t),
      sourceSecondarygreencolor: Color.lerp(
          sourceSecondarygreencolor, other.sourceSecondarygreencolor, t),
      secondarygreencolor:
          Color.lerp(secondarygreencolor, other.secondarygreencolor, t),
      onSecondarygreencolor:
          Color.lerp(onSecondarygreencolor, other.onSecondarygreencolor, t),
      secondarygreencolorContainer: Color.lerp(
          secondarygreencolorContainer, other.secondarygreencolorContainer, t),
      onSecondarygreencolorContainer: Color.lerp(onSecondarygreencolorContainer,
          other.onSecondarygreencolorContainer, t),
      sourceGreytextcolor:
          Color.lerp(sourceGreytextcolor, other.sourceGreytextcolor, t),
      greytextcolor: Color.lerp(greytextcolor, other.greytextcolor, t),
      onGreytextcolor: Color.lerp(onGreytextcolor, other.onGreytextcolor, t),
      greytextcolorContainer:
          Color.lerp(greytextcolorContainer, other.greytextcolorContainer, t),
      onGreytextcolorContainer: Color.lerp(
          onGreytextcolorContainer, other.onGreytextcolorContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith();
  }
}
