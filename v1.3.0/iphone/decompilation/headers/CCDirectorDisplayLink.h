// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCDIRECTORDISPLAYLINK_H
#define CCDIRECTORDISPLAYLINK_H


#import <QuartzCore/QuartzCore.h>

@class CCDirectorIOS;

@interface CCDirectorDisplayLink : CCDirectorIOS {
    CADisplayLink *_displayLink;
    CGFloat _lastDisplayTime;
}




-(void)mainLoop:(id)arg0 ;
-(void)setAnimationInterval:(CGFloat)arg0 ;
-(void)startAnimation;
-(void)stopAnimation;
-(void)calculateDeltaTime;
-(void)threadMainLoop;
-(void)dealloc;


@end


#endif