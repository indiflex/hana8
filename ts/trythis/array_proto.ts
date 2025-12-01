const hongx = { id: 1, name: 'Hong', dept: 'Server' };
const kimx = { id: 2, name: 'Kim', dept: 'Server' };
const leex = { id: 3, name: 'Lee', dept: 'Client' };
const users = [hongx, leex, kimx];
declare global {
  interface Array<T> {
    firstObject: T;
    lastObject: T;
    // mapBy: (prop: keyof T) => T[];
    mapBy(prop: keyof T): T[];
    filterBy(prop: keyof T, value: T[keyof T], isIncludes?: boolean): T[];
    rejectBy(prop: keyof T, value: T[keyof T], isIncludes?: boolean): T[];
  }
}
Array.prototype.rejectBy = function <T>(
  prop: keyof T,
  value: T[keyof T] & string,
  isIncludes = false
) {
  const cb: (a: T) => boolean = isIncludes
    ? a => typeof a[prop] === 'string' && !a[prop]?.includes(value)
    : a => a[prop] !== value;

  return this.filter(cb);
};
console.log(users.rejectBy('id', 2)); // [hong, lee]
console.log(users.rejectBy('name', 'i', true)); // [hong, lee]
console.log(users.findBy('name', 'Kim')); //  kim;
console.log(users.sortBy('name:desc')); //  [lee, kim, hong];
console.log(users.sortBy('name')); // [hong, kim, lee]

Array.prototype.filterBy = function <T>(
  prop: keyof T,
  value: T[keyof T] & string,
  isIncludes = false
) {
  const cb: (a: T) => boolean = isIncludes
    ? a => typeof a[prop] === 'string' && a[prop]?.includes(value)
    : a => a[prop] === value;

  return this.filter(cb);
};
// Array.prototype.filterBy = function (prop, value, isIncludes = false) {
//   const cb = isIncludes
//   ? a => a[prop]?.includes(value)
//   : a => a[prop] === value;

//   return this.filter(cb);
// };
console.log(users.filterBy('id', 2)); // [kim]);
console.log(users.filterBy('name', 'i', true)); // [kim]

Array.prototype.mapBy = function (prop) {
  return this.map(a => a[prop]);
};
console.log(users.mapBy('id')); // [1, 3, 2];
console.log(users.mapBy('name')); // ['Hong', 'Lee', 'Kim']);

// --
Array.prototype.findBy = function (prop, value) {
  return this.find(a => a[prop] === value);
};

Array.prototype.sortBy = function (prop) {
  // name | name:desc | name:asc
  const [key, direction = 'asc'] = prop?.split(':');
  const dir = direction.toLowerCase() === 'desc' ? -1 : 1;
  // console.log('🚀  dir:', dir, prop);
  return this.sort((a, b) => (a[key] > b[key] ? dir : -dir));
};

Array.prototype.groupByFn = function (gfn) {
  const ret = {};
  for (const a of this) {
    const k = gfn(a);
    ret[k] ||= [];
    ret[k].push(a);
  }

  return ret;
};
Array.prototype.groupBy = function (prop) {
  const ret = {};
  for (const a of this) {
    const key = a[prop];
    ret[key] ||= [];
    ret[key].push(a);
  }
  return ret;
};

Object.defineProperties(Array.prototype, {
  firstObject: {
    get() {
      return this[0];
    },
    set(value) {
      this[0] = value;
      // this.with(0, value); // pure fn
    },
  },
  lastObject: {
    get() {
      return this.at([-1]);
    },
    set(value) {
      this[this.length - 1] = value;
      // this.with(-1, value);
    },
  },
});

console.log(users.groupBy(({ dept }) => dept));
/*
Server: [
  { id: 1, name: 'Hong', dept: 'Server' },
  { id: 2, name: 'Kim', dept: 'Server' },
],
Client: [
  { id: 3, name: 'Lee', dept: 'Client' }
],
*/

console.log('first/last=', users.firstObject.name, users.lastObject.name); // hong/lee
users.firstObject = kimx;
users.lastObject = hongx;
console.log('first/last=', users.firstObject.name, users.lastObject.name); // kim/hong
