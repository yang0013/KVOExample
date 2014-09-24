//
//  main.m
//  CardCaptorChars
//
//  Created by yang on 14-9-23.
//  Copyright (c) 2014年 yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

int main(int argc, const char * argv[])
{

    Character *sakura;
    Character *shaoran;
    
    //Create and give the properties some values with KVC...
    sakura = [[Character alloc] init];
    [sakura setValue:@"Sakura Kinomoto" forKey:@"characterName"];
    [sakura setValue:[NSNumber numberWithInt:20] forKey:@"ownedClowCards"];
    
    shaoran = [[Character alloc] init];
//    [shaoran addObserver:shaoran forKeyPath:@"ownedClowCards" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    [shaoran setValue:@"Li Shaoran" forKey:@"characterName"];
    [shaoran setValue:[NSNumber numberWithInt:21] forKey:@"ownedClowCards"];
    [shaoran setValue:[NSNumber numberWithInt:10] forKey:@"ownedClowCards"];
    
    //Done! Now we are going to fetch the values using KVC.
    
    NSString *mainCharacter = [sakura valueForKey:@"characterName"];
    NSNumber *mainCharCards = [sakura valueForKey:@"ownedClowCards"];
    
    NSString *rival = [shaoran valueForKey:@"characterName"];
    NSNumber *rivalCards = [shaoran valueForKey:@"ownedClowCards"];

    NSLog(@"%@ has %d Clow Cards", mainCharacter, [mainCharCards intValue]);
    NSLog(@"%@ has %d Clow Cards", rival, [rivalCards intValue]);
    
//    [shaoran removeObserver:shaoran forKeyPath:@"ownedClowCards"];
    return 0;
}

