function reduceTheNumber(number, k) {
    let splitNums = number.split('')
    let numArray = splitNums.map(num => { return num * 1 })


    if (numArray.length <= k) {
        return number
    }

    let len = numArray.length

    while (len >= k) {
        const sumArray = groupAndSum(numArray, k)
        len = sumArray.length
        numArray = sumArray
    }

    return numArray.join('')

    function groupAndSum(array, n) {
        const groupArray = []

        for (let i = 0; i < array.length; i++) {
            let grouping = array.slice(i, i + n)
            groupArray.push(grouping)
            i += (n - 1)
        }

        const summed = groupArray.map(group => {
            if (group.length > 1) {
                return group.reduce((a, b) => a + b)
            } else {
                return group[0]
            }
        })

        return summed
    }
}

console.log(reduceTheNumber('1111122222', 5));
re