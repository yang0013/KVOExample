//
//  Character.h
//  CardCaptorChars
//
//  Created by yang on 14-9-23.
//  Copyright (c) 2014年 yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject
{
    NSString *characterName;
    NSInteger ownedClowCards;
}
@property (nonatomic, copy) NSString *characterName;
@property NSInteger ownedClowCards;
-(void)hasLostClowCard;
-(void)hasGainedClowCard;
@end

