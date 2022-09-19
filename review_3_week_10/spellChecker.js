class SpellChecker {
  constructor() {
    this.validWords = ["hello", "these", "words", "are", "spelt", "correctly"];
  }
  showMistakes(text) {
    return text.split(" ").map(word => {
      if (this.validWords.includes(word)) {
        return word;
      }
    })
    .join(" ");
  }
}

module.exports = SpellChecker;
