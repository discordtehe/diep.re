// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDNODE_H
#define HUDNODE_H



@class CCNode;
@class CCSprite;
@class MCColorNode;
@class CCMenu;
@class CCLabelTTF;
@class MCAdjustableLabelTTF;
@class HUDDiep;
@class CCMenuItem;

@interface HUDNode : CCNode {
    CCSprite *_moveJoystickBackground;
    MCColorNode *_fadeNode;
}


@property (readonly, nonatomic) CCMenu *menu; // ivar: _menu
@property (readonly, nonatomic) CCMenu *bottomMenu; // ivar: _bottomMenu
@property (readonly, nonatomic) CCLabelTTF *scoreLabel; // ivar: _scoreLabel
@property (readonly, nonatomic) MCAdjustableLabelTTF *connectionLabel; // ivar: _connectionLabel
@property (readonly, nonatomic) HUDDiep *hudDiep; // ivar: _hudDiep
@property (readonly, nonatomic) CCMenuItem *zoomButton; // ivar: _zoomButton
@property (readonly, nonatomic) CCMenuItem *zoomButtonRight; // ivar: _zoomButtonRight
@property (readonly, nonatomic) CCSprite *zoomInImage; // ivar: _zoomInImage
@property (readonly, nonatomic) CCSprite *zoomOutImage; // ivar: _zoomOutImage
@property (readonly, nonatomic) CCSprite *zoomInImageRight; // ivar: _zoomInImageRight
@property (readonly, nonatomic) CCSprite *zoomOutImageRight; // ivar: _zoomOutImageRight
@property (readonly, nonatomic) CCMenuItem *scoreboardButton; // ivar: _scoreboardButton
@property (readonly, nonatomic) CCSprite *aimShootJoystickBackground; // ivar: _aimShootJoystickBackground


-(struct CGPoint )moveJoystickPosition;
-(struct CGPoint )aimShootJoystickPosition;
-(void)setQuestProgressVisible:(BOOL)arg0 ;
-(void)animateFadeAfter:(float)arg0 ;
+(void)setupPressedAndDisabledStatesForButton:(id)arg0 ;
+(id)createInputConsumerForButton:(id)arg0 ;


@end


#endif