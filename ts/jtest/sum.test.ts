import { fetchUser, sum, sumId } from './sum';

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

describe.skip('user-fetch-test', () => {
  test('users sum of ids', async () => {
    const sumUserId = await sumId();
    expect(sumUserId).toBe(55);
  });

  test('fetchUser with 1', async () => {
    const bret = { id: 1, username: 'Bret' };
    expect(await fetchUser(bret.id)).toStrictEqual(bret);
    await expect(fetchUser(bret.id)).resolves.toStrictEqual(bret);
  });

  test('fetchUser with not-exists userId', async () => {
    await expect(fetchUser(100)).rejects.toThrow(`100 User Not Found!`);
  });
});
