// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSTATELESSACTIONHANDLER_H
#define GADSTATELESSACTIONHANDLER_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADStatelessActionHandler : NSObject {
    GADObserverCollection *_observers;
    NSOperationQueue *_observationQueue;
}




-(id)init;
-(void)handlePingURLAction:(id)arg0 ;
-(void)handleLogMessageAction:(id)arg0 ;
-(void)handleTouchAction:(id)arg0 ;
+(id)sharedInstance;


@end


#endif