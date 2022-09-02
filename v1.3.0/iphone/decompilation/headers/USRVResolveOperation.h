// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVRESOLVEOPERATION_H
#define USRVRESOLVEOPERATION_H


#import <Foundation/Foundation.h>

@class USRVResolve;

@interface USRVResolveOperation : NSOperation

@property (copy, nonatomic) id *completeBlock; // ivar: _completeBlock
@property (retain, nonatomic) USRVResolve *resolve; // ivar: _resolve


-(id)initWithHostName:(id)arg0 completeBlock:(id)arg1 ;
-(void)main;
-(void)startObserving;
-(void)stopObserving;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;


@end


#endif