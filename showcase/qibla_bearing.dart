// ─── Nefs · showcase/qibla_bearing.dart ───
// EN: Calculates the true Qibla bearing from the user's location using spherical trigonometry.
//     Used by the Qibla compass screen (features/qibla).
// TR: Kullanıcının konumundan Kabe yönünü küresel trigonometri ile hesaplar.
//     Kıble pusulası ekranında kullanılır (features/qibla).
// Excerpt only — the full source code is private. / Yalnızca alıntıdır, tam kaynak kod kapalıdır.

static double calculateTrueBearing(double userLat, double userLng) {
  final phi1 = _toRadians(userLat), phi2 = _toRadians(kaabaLat);
  final deltaL = _toRadians(kaabaLng) - _toRadians(userLng);
  final y = sin(deltaL);
  final x = cos(phi1) * tan(phi2) - sin(phi1) * cos(deltaL);
  return (_toDegrees(atan2(y, x)) + 360) % 360;
}
