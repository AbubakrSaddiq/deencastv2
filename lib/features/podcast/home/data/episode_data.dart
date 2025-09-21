class Episode {
  final String date;
  final String title;
  final String category;
  final String duration;
  final String scholarName;
  final String scholarImage;

  Episode({
    required this.date,
    required this.title,
    required this.category,
    required this.duration,
    required this.scholarName,
    required this.scholarImage,
  });
}

final List<Episode> listEpisodes = [
  Episode(
    date: "Sept 3, 2025",
    title: "The Importance of Sincerity in Islam",
    category: "Tafsir",
    duration: "25 min",
    scholarName: "Sheikh Abubakar",
    scholarImage: "assets/images/scholar1.png",
  ),
  Episode(
    date: "Aug 30, 2025",
    title: "Understanding Surah Al-Fatiha",
    category: "Quran",
    duration: "18 min",
    scholarName: "Ustadh Musa",
    scholarImage: "assets/images/scholar2.png",
  ),
  Episode(
    date: "Aug 25, 2025",
    title: "The Etiquettes of Seeking Knowledge",
    category: "Hadith",
    duration: "32 min",
    scholarName: "Imam Idris",
    scholarImage: "assets/images/scholar3.png",
  ),
];
