// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SIMPLEJOYSTICKVIEW_H
#define SIMPLEJOYSTICKVIEW_H


#import <Foundation/Foundation.h>

@class CCNode;
@protocol JoystickInputViewDelegate;

@interface SimpleJoystickView : CCNode <JoystickInputViewDelegate>

 {
    float mMaxRadius;
    float mEaseFactor;
    CGPoint mStickPosition;
    CGPoint mAxis;
    BOOL mEnabled;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithMaxRadius:(float)arg0 easeFactor:(float)arg1 ;
-(void)onSetEnabled:(BOOL)arg0 ;
-(void)onDesiredAxisChanged:(struct CGPoint )arg0 ;
-(void)onPositionChanged:(struct CGPoint )arg0 ;
-(void)onCleanup;
-(void)customDraw;
-(void)draw;


@end


#endif