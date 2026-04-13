'use client';

export default function SayHello({ name }: { name: string }) {
  return (
    <button
      onClick={() => alert(`Hello, ${name}!`)}
      className="cursor-pointer rounded-md border p-1"
      suppressHydrationWarning
    >
      Hello, {name} - {Date.now()}
    </button>
  );
}
