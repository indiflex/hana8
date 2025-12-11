import type { PropsWithChildren } from "react";

// type Prop = {
//   name: string;
//   children: ReactNode;
// };

type Prop = PropsWithChildren<{
  name: string;
}>

export default function Hello(prop: Prop) {
  return <h2>Hello, {prop.name}</h2>;
}