class Emp {
  constructor(name) {
    // super();
    // this.setFullName(name);
    this.fullName = name;
  }

  // 'Kildong Hong'
  // setFullName(name) {
  set fullName(name) {
    [this.firstName, this.lastName] = name.split(' ');
  }

  get fullName() {
    return `${this.firstName} ${this.lastName}`;
  }

  lowerName() {
    throw new Error('implement this!!');
  }
}

const hong = new Emp('Kildong Hong');
// const kim = {name: 'Kim'}
// console.log(hong.getFullName());
console.log(hong.fullName);
hong.fullName = 'Nanda Kim';
console.log(hong.fullName);

console.log(Object.getOwnPropertyDescriptor(Emp.prototype, 'fullName'));

console.log('hong=', hong);

const kim = {
  id: 1,
  firstName: 'Nanda',
  lastName: 'Kim',
};
const proxyObj = new Proxy(hong, {
  // x = target.fullName
  get(target, prop, receiver) {
    console.log('receiver>>', receiver === proxyObj);
    if (prop === 'fullName') {
      return `${target.firstName} ${target.lastName}`;
    }
    return target[prop];
  },

  // target.fullName = value;
  set(target, prop, value, receiver) {
    if (prop === 'fullName') {
      [target.firstName, target.lastName] = value.split(' ');
    } else {
      target[prop] = value;
    }
  },
});

console.log('🚀 ~ id:', kim.id);
console.log('🚀 ~ name:', proxyObj.fullName, kim.fullName);
console.log(proxyObj instanceof Emp);

// Object.defineProperty(Emp.prototype, 'upperName', {});

Object.defineProperties(Emp.prototype, {
  upperName: {
    get() {
      return this.fullName.toUpperCase();
    },
  },
  lowerName: {
    get() {
      return this.fullName.toLowerCase();
    },
  },
});
Emp.prototype.nameLength = function () {
  return this.fullName.length;
};
console.log('upper>>', hong.upperName);
console.log('lower>>', hong.lowerName);
console.log('nameLen>>', hong.nameLength());

console.log('----------------------');
class Pet {
  feed(nutrient) {
    console.log(`feed to ${this.name} :`, nutrient);
  }
}

// console.log(Pet.prototype.feed);
Object.assign(Emp.prototype, { feed: Pet.prototype.feed });
hong.feed('xxxx');
