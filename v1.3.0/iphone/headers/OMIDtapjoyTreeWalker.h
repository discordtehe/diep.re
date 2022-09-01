// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYTREEWALKER_H
#define OMIDTAPJOYTREEWALKER_H

@protocol OMIDtapjoyTreeWalkerTimeLogger;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class OMIDtapjoyProcessorFactory;
@class OMIDtapjoyAdViewCache;
@class OMIDtapjoyStatePublisher;

@interface OMIDtapjoyTreeWalker : NSObject {
    NSTimer *_timer;
    NSUInteger _count;
    NSDate *_date1;
    NSDate *_date2;
}


@property (readonly, nonatomic) OMIDtapjoyProcessorFactory *processorFactory; // ivar: _processorFactory
@property (readonly, nonatomic) OMIDtapjoyAdViewCache *adViewCache; // ivar: _adViewCache
@property (readonly, nonatomic) OMIDtapjoyStatePublisher *statePublisher; // ivar: _statePublisher
@property (weak, nonatomic) NSObject<OMIDtapjoyTreeWalkerTimeLogger> *timeLogger; // ivar: _timeLogger


-(id)init;
-(void)start;
-(void)stop;
-(void)pause;
-(void)updateTreeState;
-(void)beforeWalk;
-(void)afterWalk;
-(void)doWalk;
-(void)walkView:(id)arg0 processor:(id)arg1 parentState:(id)arg2 ;
-(void)walkChildrenForView:(id)arg0 processor:(id)arg1 state:(id)arg2 type:(NSUInteger)arg3 ;
-(BOOL)handleAdView:(id)arg0 withState:(id)arg1 ;
-(void)checkFriendlyObstruction:(id)arg0 withState:(id)arg1 ;
-(void)onTick:(id)arg0 ;
+(id)getInstance;


@end


#endif