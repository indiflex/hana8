'use client';

// import Image from 'next/image';
// import d from '@/public/profile_dummy.png';
import { useIsMobile } from '@/hooks/use-mobile';
import { Avatar, AvatarFallback, AvatarImage } from './ui/avatar';
import { Button } from './ui/button';
import { HoverCard, HoverCardContent, HoverCardTrigger } from './ui/hover-card';
import { Popover, PopoverContent, PopoverTrigger } from './ui/popover';

const DummyProfileImage = '/profile_dummy.png';

export default function UserProfile() {
  const isMobile = useIsMobile();

  // const Comp = isMobile ? Popover : HoverCard;
  // const Trigger = isMobile ? PopoverTrigger : HoverCardTrigger;
  // const Content = isMobile ? PopoverContent : HoverCardContent;

  const Comp = isMobile
    ? { comp: Popover, trigger: PopoverTrigger, content: PopoverContent }
    : { comp: HoverCard, trigger: HoverCardTrigger, content: HoverCardContent };

  return (
    <Comp.comp>
      {/* <Image src={d} width={200} height={200} alt="xx" /> */}
      <Comp.trigger asChild>
        <Button
          variant="ghost"
          className="touch-none md:pointer-events-auto md:touch-auto"
        >
          <Avatar>
            <AvatarImage src={isMobile ? DummyProfileImage : undefined} />
            <AvatarFallback className="text-xl uppercase">
              {'guest'.substring(0, 2)}
            </AvatarFallback>
          </Avatar>
        </Button>
      </Comp.trigger>
      <Comp.content side="right" className="w-auto max-w-80">
        <div className="flex justify-between gap-1">
          <div className="w-20">
            <Avatar className="h-16 w-16">
              <AvatarImage src={DummyProfileImage} className="" />
              <AvatarFallback>DP</AvatarFallback>
            </Avatar>
          </div>
          <div className="shrink-0 space-y-1">
            <h4 className="font-semibold text-sm">@guest</h4>
            <p className="text-muted-foreground text-sm">guest@gmail.com</p>
            <div className="text-muted-foreground text-xs">
              {12} Books
              {23} Marks 00 Followers
            </div>
          </div>
        </div>
      </Comp.content>
    </Comp.comp>
  );
}
