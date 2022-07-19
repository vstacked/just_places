enum ModeType {
  driving('driving'),
  bicycling('bicycling'),
  walking('walking'),
  transit('transit');

  const ModeType(this.mode);

  final String mode;

  String get value => mode;
}
