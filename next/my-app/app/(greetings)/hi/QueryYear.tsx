'use client';
import { IconForbid2 } from '@tabler/icons-react';
import { SearchIcon, ShellIcon } from 'lucide-react';
import { debounce } from 'nuqs';
import { type ChangeEvent, useTransition } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { useQueryAndYear } from './search-params';

export default function QueryYear() {
  const [isPending, startTransition] = useTransition();
  const [{ query, year }, setQueryAndYear] = useQueryAndYear({
    limitUrlUpdates: debounce(500),
    startTransition,
  });

  const setQuery = (e: ChangeEvent<HTMLInputElement>) =>
    startTransition(async () => {
      await setQueryAndYear(
        { query: e.target.value },
        // { limitUrlUpdates: e.target.value ? debounce(500) : undefined },
      );
    });

  const setYear = (e: ChangeEvent<HTMLInputElement>) => {
    const year = Number.isNaN(e.target.valueAsNumber)
      ? null
      : e.target.valueAsNumber;
    setQueryAndYear({ year });
  };

  const onClear = () => setQueryAndYear({ query: '', year: null });

  return (
    <div className="flex items-center gap-5 rounded-md border p-1">
      <Input type="text" value={query} onChange={setQuery} />
      <Input type="number" value={year ?? ''} onChange={setYear} />
      <div className="h-8 w-8 text-muted-foreground">
        {isPending ? (
          <ShellIcon className="h-full animate-spin" />
        ) : (
          <SearchIcon className="h-full" />
        )}
      </div>
      <Button variant={'secondary'} type="reset" onClick={onClear}>
        <IconForbid2 />
        Clear Query
      </Button>
    </div>
  );
}
