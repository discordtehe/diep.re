// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDSCOREBOARDNODE_H
#define HUDSCOREBOARDNODE_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class CCNode;
@class MCFramedSprite;
@class CCSprite;
@class MCAdjustableLabelTTF;

@interface HUDScoreboardNode : CCNode {
    CGSize _initialContentSize;
    MCFramedSprite *_barRed;
    MCFramedSprite *_barBlue;
    char * _score;
    BOOL _ccbLoaded;
    float _xStart;
    NSMutableDictionary *_dictSprites;
    NSMutableString *_lastScore;
    NSMutableString *_lastName;
    NSMutableString *_lastState;
    CCSprite *_nameSprite;
    NSString *_opponentNameString;
}


@property (nonatomic) MCFramedSprite *barFrame; // ivar: _barFrame
@property (nonatomic) MCFramedSprite *player1Frame; // ivar: _player1Frame
@property (nonatomic) CCNode *barLimiter; // ivar: _barLimiter
@property (nonatomic) MCFramedSprite *bar; // ivar: _bar
@property (nonatomic) MCAdjustableLabelTTF *opponentName; // ivar: _opponentName
@property (nonatomic) MCAdjustableLabelTTF *player1Name; // ivar: _player1Name
@property (nonatomic) unsigned int scoreboardColor; // ivar: _scoreboardColor


-(id)init;
-(void)dealloc;
-(void)didLoadFromCCB;
-(void)setCurrentSizeWithPerc:(float)arg0 ;
-(id)getCachedTexture:(id)arg0 color:(int)arg1 ;
-(void)render_scoreboard:(id)arg0 score:(id)arg1 isPlayer:(BOOL)arg2 ;
-(void)setPlayerScoreWithText:(id)arg0 score:(char *)arg1 ;
-(void)setOpponentScoreWithText:(id)arg0 score:(char *)arg1 ;
-(void)setAsPlayerNode;
-(void)setAsPlayerNodeWithPlayerName;
-(void)setAsPlayerNodeWithText:(id)arg0 ;


@end


#endif