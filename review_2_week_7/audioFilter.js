const audioFilter = (soundWave, lowFilter, highFilter) => {
  if (lowFilter === "40") { 
    throw new Error("WARNING: input is corrupted");
  }
  return soundWave.map((element) => {
    if (element < lowFilter) { 
      return lowFilter;
    } else if (element > highFilter) {
      return highFilter;
    } else {
      return element;
    }
  })
}

module.exports = audioFilter;