// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDTREEWALKER_H
#define GADOMIDTREEWALKER_H

@protocol GADOMIDTreeWalkerTimeLogger;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADOMIDProcessorFactory;
@class GADOMIDAdViewCache;
@class GADOMIDStatePublisher;

@interface GADOMIDTreeWalker : NSObject {
    NSTimer *_timer;
    NSUInteger _count;
    NSDate *_date1;
    NSDate *_date2;
}


@property (readonly, nonatomic) GADOMIDProcessorFactory *processorFactory; // ivar: _processorFactory
@property (readonly, nonatomic) GADOMIDAdViewCache *adViewCache; // ivar: _adViewCache
@property (readonly, nonatomic) GADOMIDStatePublisher *statePublisher; // ivar: _statePublisher
@property (weak, nonatomic) NSObject<GADOMIDTreeWalkerTimeLogger> *timeLogger; // ivar: _timeLogger


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