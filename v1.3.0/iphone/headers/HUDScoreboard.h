// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDSCOREBOARD_H
#define HUDSCOREBOARD_H


#import <CoreFoundation/CoreFoundation.h>

@class CCNode;

@interface HUDScoreboard : CCNode {
    BOOL _ccbLoaded;
    BOOL _scoreboardOpen;
    CCNode *_animatedScoreboardNode;
    NSArray *_scoreboardNodes;
    CCNode *_scoreBar1;
    CCNode *_scoreBar2;
    CCNode *_scoreBar3;
    CCNode *_scoreBar4;
    CCNode *_scoreBar5;
    CCNode *_scoreBar6;
    vector<float, std::__1::allocator<float> > _scores;
    float _lastScore;
    BOOL _isSelfDisplayed;
    BOOL _firstDraw;
    BOOL _firstDrawPlayer;
    CGFloat _dt;
}




-(id)init;
-(void)dealloc;
-(void)didLoadFromCCB;
-(void)enterLeaderboard;
-(void)leaveLeaderboard;
-(void)toggleLeaderboard;
-(BOOL)isScoreboardValid;
-(void)update:(CGFloat)arg0 ;
-(id)getFormattedName:(id)arg0 ;


@end


#endif