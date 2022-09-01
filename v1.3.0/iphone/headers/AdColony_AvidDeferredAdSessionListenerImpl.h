// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDDEFERREDADSESSIONLISTENERIMPL_H
#define ADCOLONY_AVIDDEFERREDADSESSIONLISTENERIMPL_H


#import <Foundation/Foundation.h>

@class AdColony_AvidEventDispatcher;
@protocol AdColony_AvidDeferredAdSessionListener;

@interface AdColony_AvidDeferredAdSessionListenerImpl : NSObject <AdColony_AvidDeferredAdSessionListener>



@property (weak, nonatomic) AdColony_AvidEventDispatcher *dispatcher; // ivar: _dispatcher
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)recordReadyEvent;


@end


#endif