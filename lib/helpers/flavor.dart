enum FlavorType {
  PRODUCTION,
  DEVELOPMENT,
}

class Flavor {
  static FlavorType appFlavor;
  static bool isProduction() {
    return appFlavor == FlavorType.PRODUCTION;
  }
}
