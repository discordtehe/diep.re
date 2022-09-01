// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GAMESTATE_H
#define GAMESTATE_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class BaseState;
@class CCMenu;
@class HUDNode;
@class MCInputDispatcher;
@class JoystickInput;
@class SpriteJoystickView;
@class ArenaView;
@class CCMenuItemLabel;
@class CCFiniteTimeAction;
@protocol MCInputReceiver;
@protocol ApplicationInputDelegate;

@interface GameState : BaseState <MCInputReceiver, ApplicationInputDelegate>

 {
    CCMenu *mMenu;
    CCMenu *mBottomMenu;
    HUDNode *mHudNode;
    CGPoint mDefaultLeftJoystickPosition;
    CGPoint mDefaultRightJoystickPosition;
    MCInputDispatcher *mInputDispatcher;
    JoystickInput *mJoystickMove;
    JoystickInput *mJoystickAimShoot;
    SpriteJoystickView *mJoystickMoveView;
    SpriteJoystickView *mJoystickAimShootView;
    NSMutableArray *mAllTouches;
    NSMutableArray *mJoystickMoveTouches;
    NSMutableArray *mJoystickAimShootTouches;
    ArenaView *mArenaView;
    CGFloat mLastUpdateTimeStamp;
    float mUpdateRate;
    unsigned int mLatestUpdateOrder;
    BOOL mShootJoystickOnRight;
    int mUseDynamicJoystickReposition;
    BOOL mAutoPoint;
    CCMenuItemLabel *mAutoPointButton;
    BOOL _isReconnectGame;
    BOOL _isDying;
    float _storedAngle;
    NSDate *_storedDate;
    float _timeToSendDirection;
    float _angleToSendDirection;
    CGPoint _sentAxis;
    float mAverageFrameDuration;
    CCFiniteTimeAction *mConnectionProblemsTimerAction;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)isRootState;
-(BOOL)occupiesFullScreen;
-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)injectParameters:(id)arg0 ;
-(void)destroy;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(void)update:(CGFloat)arg0 ;
-(void)showMenuPause;
-(void)setupArenaWithInitialState;
-(void)toggleLeaderboardButtonCallback;
-(void)arrangeButtonForFixedDpi:(id)arg0 inches:(float)arg1 ;
-(void)setupHUD;
-(void)setupControls;
-(void)pauseButtonCallback;
-(void)upgradeButtonCallback;
-(void)zoomButtonCallback;
-(void)onInputAxisChangedCallback:(struct CGPoint )arg0 priority:(int)arg1 ;
-(void)onDeath;
-(void)fallbackMenuMain;
-(void)gameOverTransition;
-(void)auxiliarGoToMain;
-(void)dismissTutorial;
-(struct CGPoint )getDefaultZoomPosition;
-(struct CGPoint )getDefaultZoomAnchorpoint;
-(struct CGPoint )getDefaultLeftJoystickPosition;
-(struct CGPoint )getDefaultRightJoystickPosition;
-(void)followJoystick:(id)arg0 withPoint:(struct CGPoint )arg1 factor:(float)arg2 ;
-(void)createJoystick;
-(void)createAimShootJoystick;
-(void)spawnJoystick:(id)arg0 withTouch:(id)arg1 withLocation:(struct CGPoint )arg2 ;
-(void)onTouchesBegan:(id)arg0 original:(BOOL)arg1 ;
-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesBegan:(id)arg0 currentNumTouches:(unsigned int)arg1 ;
-(void)touchesMoved:(id)arg0 currentNumTouches:(unsigned int)arg1 ;
-(void)touchEndedForJoystick:(id)arg0 withTouches:(id)arg1 currentNumTouches:(unsigned int)arg2 ;
-(void)touchesEnded:(id)arg0 currentNumTouches:(unsigned int)arg1 ;
-(void)resetControls;
-(void)touchesCancelled:(id)arg0 currentNumTouches:(unsigned int)arg1 ;


@end


#endif