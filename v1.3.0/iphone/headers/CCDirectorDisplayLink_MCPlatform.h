// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCDIRECTORDISPLAYLINK_MCPLATFORM_H
#define CCDIRECTORDISPLAYLINK_MCPLATFORM_H


#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>


@interface CCDirectorDisplayLink_MCPlatform : NSObject {
    CADisplayLink *_displayLink;
    CGFloat _lastDisplayTime;
    CGFloat _animationInterval;
    BOOL _isAnimating;
    BOOL _nextDeltaTimeZero;
    CGFloat _dt;
}




-(id)init;
-(void)mainLoop:(id)arg0 ;
-(void)setAnimationInterval:(CGFloat)arg0 ;
-(void)startAnimation;
-(void)stopAnimation;
-(void)calculateDeltaTime;
-(void)threadMainLoop;
-(void)dealloc;


@end


#endif