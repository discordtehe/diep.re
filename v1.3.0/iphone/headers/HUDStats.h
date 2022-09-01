// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDSTATS_H
#define HUDSTATS_H


#import <CoreFoundation/CoreFoundation.h>

@class CCNode;
@class CCMenu;
@class MCAdjustableLabelTTF;

@interface HUDStats : CCNode {
    CCMenu *_statsMenu;
    CCMenu *_smasherStatsMenu;
    MCAdjustableLabelTTF *_statsAvailable;
    NSMutableArray *_stats;
    NSMutableArray *_smasherStats;
    BOOL _ccbLoaded;
}




-(id)init;
-(void)didLoadFromCCB;
-(void)enterStats;
-(void)leaveStats;
-(void)createStats;
-(void)createSmasherStats;
-(void)refreshStats;
-(void)refreshStatNames;
-(void)refreshStatType;
-(void)enableAllButtons;
-(void)disableAllButtons;


@end


#endif