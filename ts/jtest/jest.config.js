module.exports = {
  preset: 'ts-jest',
  testMatch: ['**/*.test.ts'],
  reporters: [
    'default',
    [
      './node_modules/jest-html-reporter',
      {
        pageTitle: 'Jest Test Report',
        includeFailureMsg: true,
        includeConsoleLog: true,
        sort: 'titleAsc',
      },
    ],
  ],
};
