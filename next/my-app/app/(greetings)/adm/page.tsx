import Link from 'next/link';

export default function AdmPage() {
  return (
    <>
      <h1 className="text-2xl">Admin Page!</h1>
      <div className="flex justify-around">
        <Link href="/about">About</Link>
        <Link href="/about/caches">About/caches</Link>
        <Link href="/adm/emps">Emps</Link>
      </div>
    </>
  );
}
