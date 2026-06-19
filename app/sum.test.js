const test = require('node:test');
const assert = require('node:assert');
const sum = require('./sum');

test('sum adds two numbers', () => {
  assert.strictEqual(sum(2, 3), 5);
});

test('sum works with negative numbers', () => {
  assert.strictEqual(sum(-1, -1), -2);
});