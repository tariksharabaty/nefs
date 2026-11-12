// ─── Nefs · showcase/qibla_distance.dart ───
// EN: Haversine distance (km) between the user and the Kaaba.
//     Shown under the compass as 'distance to Kaaba'.
// TR: Kullanıcı ile Kabe arasındaki mesafeyi (km) Haversine formülüyle hesaplar.
//     Pusulanın altında 'Kabe'ye uzaklık' olarak gösterilir.
// Excerpt only — the full source code is private. / Yalnızca alıntıdır, tam kaynak kod kapalıdır.

const double R = 6371.0;
final dLat = _toRadians(kaabaLat - userLat);
final dLon = _toRadians(kaabaLng - userLng);
final a = sin(dLat / 2) * sin(dLat / 2) +
    cos(_toRadians(userLat)) * cos(_toRadians(kaabaLat)) * sin(dLon / 2) * sin(dLon / 2);
return R * 2 * atan2(sqrt(a), sqrt(1 - a));
