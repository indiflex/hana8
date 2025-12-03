import { isDeepStrictEqual } from 'util';
import { BRET } from './data.test';
import { fetchUser, sum } from './sum';

describe('mock - sum', async () => {
  beforeAll(() => {
    vi.mock('./sum', () => ({
      sum: vi.fn(),
      fetchUser: vi.fn(),
    }));

    const sumX = vi.mocked(sum);
    // sumX.mockReturnValue(3);
    sumX.mockImplementation((...args: number[]) => {
      // if (args[0] === 1 && args[1] === 2) return 3;
      // if (args[0] === 10 && args[1] === 2) return 12;

      if (isDeepStrictEqual(args, [1, 2])) return 3;
      if (isDeepStrictEqual(args, [10, 2])) return 12;
      if (isDeepStrictEqual(args, [1, 2, 3, 4, 5])) return 15;

      return 0;
    });

    vi.mocked(fetchUser).mockResolvedValue(BRET);
  });

  test('sum - 3 with 1,2', () => {
    expect(sum(1, 2)).toBe(3);
  });

  test('sum - 12 with 10,2', () => {
    expect(sum(10, 2)).toBe(12);
  });

  test('sum - 15 with 5 args', () => {
    expect(sum(1, 2, 3, 4, 5)).toBe(15);
  });

  test('fetchUser', async () => {
    const user = await fetchUser(1);
    // console.log('🚀 ~ user:', user);
    expect(user).toStrictEqual(BRET);
  });
});
