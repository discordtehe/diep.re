// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFRAMERATEMONITOR_H
#define GADFRAMERATEMONITOR_H


#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>


@interface GADFramerateMonitor : NSObject {
    NSHashTable *_observers;
    CADisplayLink *_displayLink;
    BOOL _hasFirstFrameInfo;
    CGFloat _lastDrawTimestamp;
    CGFloat _secondsSinceBootAtDisplayLinkReferenceDate;
}


@property (readonly, nonatomic) CGFloat frameDuration; // ivar: _frameDuration


-(id)init;
-(void)dealloc;
-(void)startIfNeeded;
-(void)stopIfNeeded;
-(void)addFramerateObserver:(id)arg0 ;
-(void)removeFramerateObserver:(id)arg0 ;
-(NSInteger)droppedFrameCountBetweenLastRenderAndTimestamp:(CGFloat)arg0 ;
-(void)handleRenderForDisplayLink:(id)arg0 ;
+(id)sharedInstance;


@end


#endif