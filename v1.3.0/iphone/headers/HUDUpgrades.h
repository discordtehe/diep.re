// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDUPGRADES_H
#define HUDUPGRADES_H


#import <CoreFoundation/CoreFoundation.h>

@class CCNode;
@class CCMenu;

@interface HUDUpgrades : CCNode {
    CCMenu *_upgradesMenu;
    NSMutableArray *_upgrades;
    BOOL _ccbLoaded;
}




-(id)init;
-(void)didLoadFromCCB;
-(void)enterUpgrades;
-(void)leaveUpgrades;
-(void)createUpgrades;
-(void)refreshUpgrades;
-(void)enableAllButtons;
-(void)disableAllButtons;


@end


#endif