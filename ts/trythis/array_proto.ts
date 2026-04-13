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
    filterBy<K extends keyof T>(
      prop: K,
      value: T[K],
      isIncludes?: boolean
    ): T[];
    rejectBy<K extends keyof T>(
      prop: K,
      value: T[K],
      isIncludes?: boolean
    ): T[];
    findBy<K extends keyof T>(prop: K, value: T[K]): T;
    // sortBy(prop: keyof T | `${keyof T & string}:asc` | `${keyof T & string}:desc`): T[];
    sortBy(prop: keyof T | `${keyof T & string}:${'asc' | 'desc'}`): T[];
    groupByFn<K extends T[keyof T] & PropertyKey>(
      gfn: (a: T) => K
    ): Partial<Record<K, T[]>>;
    // ): Partial<Record<ReturnType<typeof gfn>, T[]>>;
    groupBy<K extends T[keyof T] & PropertyKey>(
      prop: keyof T
    ): Partial<Record<K, T[]>>;
  }
}
Array.prototype.groupByFn = function <T, K extends T[keyof T] & PropertyKey>(
  gfn: (a: T) => K
) {
  const ret: Partial<Record<K, T[]>> = {};
  for (const a of this) {
    const k = gfn(a);
    ret[k] ||= [];
    ret[k].push(a);
  }

  return ret;
};
console.log(users.groupByFn(({ dept }) => dept)); // Object.groupBy(users, cb)
Array.prototype.groupBy = function <T, K extends T[keyof T] & PropertyKey>(
  prop: keyof T
) {
  const ret: Partial<Record<K, T[]>> = {};
  for (const a of this) {
    const key: K = a[prop];
    ret[key] ||= [];
    ret[key].push(a);
  }
  return ret;
};
console.log(users.groupBy('dept')); // Object.groupBy(users, cb)
/*
Server: [
  { id: 1, name: 'Hong', dept: 'Server' },
  { id: 2, name: 'Kim', dept: 'Server' },
],
Client: [
  { id: 3, name: 'Lee', dept: 'Client' }
],
*/

Array.prototype.sortBy = function (prop) {
  // name | name:desc | name:asc | name:
  // const [key, direction = 'asc'] = prop?.split(':');
  const [key, direction = 'asc'] =
    typeof prop === 'string' && prop.includes(':')
      ? prop.split(':')
      : [prop, 'asc'];
  const dir = direction.toLowerCase() === 'desc' ? -1 : 1;
  return this.sort((a, b) => (a[key] > b[key] ? dir : -dir));
};
console.log(users.sortBy('name:desc')); //  [lee, kim, hong];
console.log(users.sortBy('name')); // [hong, kim, lee]

Array.prototype.findBy = function (prop, value) {
  return this.find(a => a[prop] === value);
};
console.log(users.findBy('name', 'Kim')); //  kim;

Array.prototype.rejectBy = function (prop, value, isIncludes = false) {
  return this.filter(a =>
    isIncludes ? !a[prop]?.includes(value) : a[prop] !== value
  );
};
console.log(users.rejectBy('id', 2)); // [hong, lee]
console.log(users.rejectBy('name', 'i', true)); // [hong, lee]

// Array.prototype.filterBy = function <T>(
//   prop: keyof T,
//   value: T[keyof T] & string,
//   isIncludes = false
// ) {
//   const cb: (a: T) => boolean = isIncludes
//     ? a => typeof a[prop] === 'string' && a[prop]?.includes(value)
//     : a => a[prop] === value;

//   return this.filter(cb);
// };
// Array.prototype.filterBy = (prop, value, isIncludes = false) => {
Array.prototype.filterBy = function (prop, value, isIncludes = false) {
  return this.filter(a =>
    isIncludes ? a[prop]?.includes(value) : a[prop] === value
  );
  // const cb = (a: typeof this[number]) =>
  //   isIncludes ? a[prop].includes(value) : a[prop] === value;
  // // const cb: (a: typeof this[number]) => boolean = isIncludes
  // // ? a => a[prop]?.includes(value)
  // // : a => a[prop] === value;

  // return this.filter(cb);
};
// console.log(users.filterBy('id', 'Kim')); // Error
console.log(users.filterBy('id', 2)); // [kim]);
console.log(users.filterBy('name', 'i', true)); // [kim]

Array.prototype.mapBy = function (prop) {
  return this.map(a => a[prop]);
};
console.log(users.mapBy('id')); // [1, 3, 2];
console.log(users.mapBy('name')); // ['Hong', 'Lee', 'Kim']);

// --
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

console.log('first/last=', users.firstObject.name, users.lastObject.name); // hong/lee
users.firstObject = kimx;
users.lastObject = hongx;
console.log('first/last=', users.firstObject.name, users.lastObject.name); // kim/hong
