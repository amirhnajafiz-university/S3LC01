var levelTrigger = (function() {
  var memoryObj = {
    000: null,
    001: null,
    010: null,
    011: null,
    100: null,
    101: null,
    110: null,
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
    }
  }
})()


levelTrigger.writeData(001, 1, 1)