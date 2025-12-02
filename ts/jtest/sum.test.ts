import { sum, sumId } from './sum';

describe('sum - integer', () => {
  beforeAll(() => {
    console.log('beforeAll!!');
  });

  test('sum - 3 with 1, 2', () => {
    const tot = sum(1, 2);
    expect(tot).toBe(3);
  });

  test('sum - 0 with no-params', () => {
    expect(sum()).toBe(0);
  });
});

describe('sumUserId', () => {
  test('users count', async () => {
    const sumUserId = await sumId();
    expect(sumUserId).toBe(55);
  });
});
