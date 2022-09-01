// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef JOYSTICKINPUT_H
#define JOYSTICKINPUT_H

@protocol JoystickInputViewDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface JoystickInput : NSObject {
    id *mAxisChangedCallback;
    float mMinRadius;
    float mMaxRadius;
    CGPoint mDesiredAxis;
    NSMutableArray *mTouches;
    float mDecayTimeAccum;
    BOOL mIsDecaying;
}


@property (nonatomic) CGPoint position; // ivar: mPosition
@property (retain, nonatomic) NSObject<JoystickInputViewDelegate> *viewDelegate; // ivar: mViewDelegate
@property (nonatomic) BOOL enabled; // ivar: mEnabled
@property (nonatomic) float decayTime; // ivar: mDecayTime
@property (nonatomic) float maxDetectionFactor; // ivar: mMaxDetectionFactor
@property (nonatomic) float totalRadius; // ivar: _totalRadius
@property (nonatomic) CGPoint axis; // ivar: mLastAxis
@property (nonatomic) float minAxisVariationStep; // ivar: mMinAxisVariation
@property (nonatomic) float minAngleVariationStep; // ivar: mMinAngleVariation
@property (nonatomic) int joystickType; // ivar: mJoystickType
@property (nonatomic) CGPoint joystickFollowTarget; // ivar: mJoystickFollowTarget
@property (nonatomic) BOOL stopOnRelease; // ivar: mStopOnRelease
@property (nonatomic) BOOL shootOnRelease; // ivar: mShootOnRelease


// -(id)initWithPosition:(struct CGPoint )arg0 minRadius:(float)arg1 maxRadius:(float)arg2 viewDelegate:(id)arg3 joystickType:(int)arg4 updateBlock:(id)arg5 maxDetectionFactor:(unk)arg6  ;
-(void)dealloc;
-(void)update:(CGFloat)arg0 ;
-(void)updateAxisWithTouchPosition:(struct CGPoint )arg0 priority:(int)arg1 ;
-(float)convertToPositiveRadians:(float)arg0 ;
-(void)updateMappedKeysWithDesiredAxis;
-(void)createMappedMouseButtonClick;
-(void)updateAxisWithNewAxis:(struct CGPoint )arg0 priority:(int)arg1 ;
-(BOOL)isTouchPointInsideJoystick:(struct CGPoint )arg0 ;
-(void)touchBegan:(id)arg0 point:(struct CGPoint )arg1 ;
-(void)touchMoved:(id)arg0 point:(struct CGPoint )arg1 ;
-(void)touchMoved:(id)arg0 point:(struct CGPoint )arg1 variationPriority:(int)arg2 ;
-(void)touchEnded:(id)arg0 point:(struct CGPoint )arg1 ;
-(void)stopFiring;
-(void)stopMoving;
-(void)clearTouches;
-(void)onInputStopped;


@end


#endif