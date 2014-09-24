//
//  Character.m
//  CardCaptorChars
//
//  Created by yang on 14-9-23.
//  Copyright (c) 2014年 yang. All rights reserved.
//

#import "Character.h"

@implementation Character
@synthesize characterName;
@synthesize ownedClowCards;

-(instancetype)init
{
    self = [super init];
    if (self) {
        [self addObserver:self forKeyPath:@"ownedClowCards" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    }
    
    return self;
}

-(void)hasLostClowCard
{
    NSLog(@"%@ has lost a card! Cards now: %ld", characterName, ownedClowCards);
}

-(void)hasGainedClowCard
{
    NSLog(@"%@ has earned a card! Cards now: %ld", characterName, ownedClowCards);
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if([keyPath isEqualToString:@"ownedClowCards"])
    {
        NSNumber *oldn = [change objectForKey:NSKeyValueChangeOldKey];
        NSInteger oldC = oldn.intValue;
        NSNumber *newn = [change objectForKey:NSKeyValueChangeNewKey];
        NSInteger newC = newn.intValue;
        if(oldC < newC)
        {
            [self hasGainedClowCard];
        }else
        {
            [self hasLostClowCard];
        }
    }
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"ownedClowCards"];
}

@end