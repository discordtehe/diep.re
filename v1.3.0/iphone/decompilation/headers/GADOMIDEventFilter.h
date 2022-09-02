// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDEVENTFILTER_H
#define GADOMIDEVENTFILTER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface GADOMIDEventFilter : NSObject {
    NSUInteger _codes;
    NSUInteger _finalEventCode;
    NSObject<OS_dispatch_queue> *_syncQueue;
}


@property (readonly, nonatomic, getter=isFinalEventAccepted) BOOL finalEventAccepted;


-(id)initWithFinalEventCode:(NSUInteger)arg0 ;
-(BOOL)acceptEventWithCode:(NSUInteger)arg0 ;
-(BOOL)acceptEventWithCode:(NSUInteger)arg0 blockingEventCodes:(NSUInteger)arg1 ;
-(BOOL)acceptAnyEventWithRequiredEventCodes:(NSUInteger)arg0 ;


@end


#endif