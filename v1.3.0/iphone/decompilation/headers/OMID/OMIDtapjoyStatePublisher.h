// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYSTATEPUBLISHER_H
#define OMIDTAPJOYSTATEPUBLISHER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class OMIDtapjoyAdSessionRegistry;

@interface OMIDtapjoyStatePublisher : NSObject {
    NSObject<OS_dispatch_queue> *_queue;
}


@property (readonly, nonatomic) NSMutableDictionary *previousState; // ivar: _previousState
@property (readonly, nonatomic) OMIDtapjoyAdSessionRegistry *adSessionRegistry; // ivar: _adSessionRegistry


-(id)initWithAdSessionRegistry:(id)arg0 ;
-(void)publishState:(id)arg0 toSessions:(id)arg1 timestamp:(CGFloat)arg2 ;
-(void)publishEmptyStateToSessions:(id)arg0 timestamp:(CGFloat)arg1 ;
-(void)publishNativeViewStateCommand:(id)arg0 toSessions:(id)arg1 timestamp:(CGFloat)arg2 ;
-(void)publishEmptyStateCommand:(id)arg0 toSessions:(id)arg1 timestamp:(CGFloat)arg2 ;
-(void)cleanupCache;


@end


#endif