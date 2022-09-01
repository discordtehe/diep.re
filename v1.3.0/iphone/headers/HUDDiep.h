// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDDIEP_H
#define HUDDIEP_H



@class CCNode;
@class HUDUpgrades;
@class HUDStats;
@class HUDLevelBar;
@class HUDScoreboard;

@interface HUDDiep : CCNode {
    int _currentClassAdvancements;
    int _currentPointsAvailable;
    vector<int, std::__1::allocator<int> > _currentAdvancements;
    int _currentActiveClass;
    BOOL _statsShown;
    BOOL _upgradesShown;
    BOOL _levelBarShown;
    BOOL _refreshUpgrades;
    BOOL _refreshStats;
    BOOL _refresh;
}


@property (readonly, nonatomic) HUDUpgrades *hudUpgrades; // ivar: _hudUpgrades
@property (readonly, nonatomic) HUDStats *hudStats; // ivar: _hudStats
@property (readonly, nonatomic) HUDLevelBar *hudLevelBar; // ivar: _hudLevelBar
@property (readonly, nonatomic) HUDScoreboard *hudScoreboard; // ivar: _hudScoreboard


-(id)init;
-(void)dealloc;
-(void)updateHUD;
-(void)updateLevelBar:(CGFloat)arg0 ;
-(void)updateLevelBar;
-(void)enterUpgrades;
-(void)enterStats;
-(void)enterLevelBar;
-(void)leaveUpgrades;
-(void)leaveStats;
-(void)leaveLevelBar;


@end


#endif