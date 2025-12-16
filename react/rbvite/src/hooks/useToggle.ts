import { useState } from 'react';

// const [isAdding, toggle] = useToggle(false);
// toggle()
export const useToggle = (defVal = false) => {
  const [flag, setFlag] = useState(defVal);
  const toggle = () => setFlag((f) => !f);

  return [flag, toggle] as const;
};
