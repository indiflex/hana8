'use client';

import { redirect, useRouter } from 'next/navigation';
import type { Session } from 'next-auth';
import { useReducer } from 'react';
// import Image from 'next/image';
// import d from '@/public/profile_dummy.png';
import { useIsMobile } from '@/hooks/use-mobile';
import { logout } from '@/lib/sign.action';
import { Avatar, AvatarFallback, AvatarImage } from './ui/avatar';
import { Button } from './ui/button';
import { HoverCard, HoverCardContent, HoverCardTrigger } from './ui/hover-card';
import { Popover, PopoverContent, PopoverTrigger } from './ui/popover';

const DummyProfileImage = '/profile_dummy.png';

export default function UserProfile({ data }: { data: Session }) {
  // const { data } = useSession();
  // console.log('🚀 ~ UserProfile - session:', data);
  if (!data || !data.user) redirect('/sign');

  const router = useRouter();
  const [isOpen, toggleOpen] = useReducer((p) => !p, false);

  const profileImg = data.user.image || DummyProfileImage;
  const isMobile = useIsMobile();

  // const Comp = isMobile ? Popover : HoverCard;
  // const Trigger = isMobile ? PopoverTrigger : HoverCardTrigger;
  // const Content = isMobile ? PopoverContent : HoverCardContent;

  const Comp = isMobile
    ? { comp: Popover, trigger: PopoverTrigger, content: PopoverContent }
    : { comp: HoverCard, trigger: HoverCardTrigger, content: HoverCardContent };

  const goToMyInfo = () => {
    toggleOpen();
    router.push('/my');
  };
  return (
    <Comp.comp open={isOpen} onOpenChange={toggleOpen}>
      {/* <Image src={d} width={200} height={200} alt="xx" /> */}
      <Comp.trigger asChild>
        <Button
          variant="ghost"
          className="touch-none md:pointer-events-auto md:touch-auto"
        >
          <Avatar>
            <AvatarImage
              src={isMobile ? profileImg : undefined}
              alt={data.user.name || 'guest'}
            />
            <AvatarFallback className="text-xl uppercase">
              {(data.user.name || 'guest').substring(0, 2)}
            </AvatarFallback>
          </Avatar>
        </Button>
      </Comp.trigger>
      <Comp.content side="right" className="w-auto max-w-80">
        <div className="flex justify-between gap-1">
          <div className="w-20">
            <Avatar className="h-16 w-16">
              <AvatarImage
                src={profileImg}
                alt={data.user.name || 'guest'}
                className=""
              />
              <AvatarFallback>DP</AvatarFallback>
            </Avatar>
          </div>
          <div className="shrink-0 space-y-1">
            <h4 className="font-semibold text-sm">@{data.user.name}</h4>
            <p className="text-muted-foreground text-sm">{data.user.email}</p>
            <div className="text-muted-foreground text-xs">
              {12} Books
              {23} Marks 00 Followers
            </div>
            <Button onClick={logout} variant={'outline'}>
              LogOut
            </Button>
            <Button onClick={goToMyInfo} variant={'outline'} className="ml-3">
              My Info.
            </Button>
          </div>
        </div>
      </Comp.content>
    </Comp.comp>
  );
}
