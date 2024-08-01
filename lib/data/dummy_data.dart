import 'model/onboard_items.dart';

class KDummyData {
  static List<OnBoardItems> onBoardItemList = [
    OnBoardItems(
      lottie: 'assets/lootie/onboardingcoba.json',
      title: "Selamat Datang Di VitisScan",
      shortDescription:
      "Selamat datang di VitisScanApp, sebuah aplikasi untuk deteksi penyakit daun anggur.",
    ),
    OnBoardItems(
      lottie: 'assets/lootie/finding2.json',
      title: "Deteksi Penyakit pada daun anggur",
      shortDescription:
      "Deteksi penyakit daun anggur dengan mengambil atau mengunggah foto daun yang menunjukkan gejala.",
    ),
    OnBoardItems(
      lottie: 'assets/lootie/tinggalsaja.json',
      title: "Selamat Mencoba Aplikasi",
      shortDescription: "Nikmati aplikasi Vitiscan dan hubungi dukungan kami jika memerlukan bantuan..",
    ),
  ];
}