const SpellChecker = require("./spellChecker");

describe("showMistakes", () => {
  it("returns a correctly spelt word unchanged. All lower case", () => {
    const checker = new SpellChecker();
    expect(checker.showMistakes("hello")).toEqual("hello");
  });
  it("returns many correctly spelt words unchanged. All lower case", () => {
    const checker = new SpellChecker();
    expect(checker.showMistakes("these words are spelt correctly")).toEqual("these words are spelt correctly");
  });
});
