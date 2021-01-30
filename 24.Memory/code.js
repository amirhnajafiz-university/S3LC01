const fullAdder = require('../binary-adder/fullAdder')

var levelTrigger = (function() {
  var memoryObj = {
    000: '00000001',
    001: '00000000',
    010: '00000000',
    011: '00000000',
    100: '00000000',
    101: '00000000',
    110: '00000111',
    111: null
  }

  return {
    getState: function (address) {
      if (!address) {
        throw new Error('Cannot access memory at undefined location')
      }

      try {
        return memoryObj[address]
      } catch (e) {
        throw new Error('Segmentation fault')
      }
    },

    writeData: function (address, data, write) {
      write ? memoryObj[address] = data : null
    }, 

    memoryIteration: function *() {
      for(const key in memoryObj) {
        if(key !== '111') {
          yield memoryObj[key]
        }
      }
    }
  }
})()

function convert2Decimal(bin) {
  return bin ? parseInt(bin, 2) : null
}

const gen = levelTrigger.memoryIteration()
let sum = 0
for(const num of gen) {
  let parsedNum = convert2Decimal(num)
  sum = fullAdder.add(sum, parsedNum)
  levelTrigger.writeData(111, sum, 1)
}
console.log(sum)
console.log(levelTrigger.getState(111))