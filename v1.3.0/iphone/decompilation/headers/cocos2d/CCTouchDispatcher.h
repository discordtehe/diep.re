// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTOUCHDISPATCHER_H
#define CCTOUCHDISPATCHER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol CCTouchDelegate;

@interface CCTouchDispatcher : NSObject <CCTouchDelegate>

 {
    NSMutableArray *targetedHandlers;
    NSMutableArray *standardHandlers;
    BOOL locked;
    BOOL toAdd;
    BOOL toRemove;
    NSMutableArray *handlersToAdd;
    NSMutableArray *handlersToRemove;
    BOOL toQuit;
    ccTouchHandlerHelperData handlerHelperData;
}


@property (nonatomic) BOOL dispatchEvents; // ivar: dispatchEvents
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(BOOL)removeDelegate:(id)arg0 fromQueue:(id)arg1 ;
-(void)forceAddHandler:(id)arg0 array:(id)arg1 ;
-(void)addStandardDelegate:(id)arg0 priority:(NSInteger)arg1 ;
-(void)addTargetedDelegate:(id)arg0 priority:(NSInteger)arg1 swallowsTouches:(BOOL)arg2 ;
-(void)forceRemoveDelegate:(id)arg0 ;
-(void)removeDelegate:(id)arg0 ;
-(void)forceRemoveAllDelegates;
-(void)removeAllDelegates;
-(id)findHandler:(id)arg0 ;
-(void)rearrangeHandlers:(id)arg0 ;
-(void)setPriority:(NSInteger)arg0 forDelegate:(id)arg1 ;
-(void)touches:(id)arg0 withEvent:(id)arg1 withTouchType:(unsigned int)arg2 ;
-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;
+(id)sharedDispatcher;


@end


#endif