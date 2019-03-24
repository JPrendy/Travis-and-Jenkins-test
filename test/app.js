const assert = require('chai').assert;
//const sayHello = require('../app').sayHello;
//const addNumbers = require('../app').addNumbers;
const app = require('../hello');

// Results
sayHelloResult = app.sayHello();

describe('App', function(){
  describe('sayHello()', function(){
    it('sayHello should return hello', function(){
      //let result = app.sayHello();
      assert.equal(sayHelloResult, 'hello');
    });
  })
})