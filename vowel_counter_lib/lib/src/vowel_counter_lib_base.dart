class Vowel {
  Map<String, int> vowelCount(String? str) {
    var text = str!.toLowerCase();
    var vowelmap = <String, int>{};
    var vowels = ["a", "e", "i", "o", "u"];
    if (text.isEmpty) {
      return vowelmap;
    } else {
      for (int i = 0; i < text.length; i++) {
        if (vowels.contains(text[i])) {
          if (!vowelmap.containsKey(text[i])) {
            vowelmap[text[i]] = 1;
          } else {
            vowelmap[text[i]] = vowelmap[text[i]]! + 1;
          }
        }
      }
    }
    return vowelmap;
  }
}
