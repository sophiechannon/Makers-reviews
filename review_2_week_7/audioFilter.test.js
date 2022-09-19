const audioFilter = require('./audioFilter');

describe('audioFilter', () => {
  it('returns a soundwave on length 1 as is if it is already within the limits', () => {
    expect(audioFilter([20], 20, 50)).toEqual([20]);
  })

  it('returns a soundwave on length 2 as is if it is already within the limits', () => {
    expect(audioFilter([20, 50], 20, 50)).toEqual([20, 50]);
  })

  it('increases a single element that is below the lower filter value and returns a new array', () => {
    expect(audioFilter([10, 30], 20, 50)).toEqual([20, 30]);
  })

  it('increases a single element that is above the higher filter value and returns a new array', () => {
    expect(audioFilter([30, 60], 20, 50)).toEqual([30, 50]);
  })

  it('returns a modified array with both high and low frequencies changed', () => {
    expect(audioFilter([10, 30, 60], 20, 50)).toEqual([20, 30, 50]);
  })

  it('returns a mofidied array with both high and low freuencies changed multiple times', () => {
    expect(audioFilter([10, 15, 40, 50, 60, 75], 20, 50)).toEqual([20, 20, 40, 50, 50, 50]);
  })

  it('throws an error if the input is corrupted', () => {
    expect(() => {
      audioFilter([10, 40, 50], "40", 50)
    }).toThrow("WARNING: input is corrupted");
  })

  it('throws an error if the input is corrupted', () => {
    expect(() => {
      audioFilter([10, 40, 50], "30", 50)
    }).toThrow("WARNING: input is corrupted");
  })




})