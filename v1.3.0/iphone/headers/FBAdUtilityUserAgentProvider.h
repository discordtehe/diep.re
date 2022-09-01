// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADUTILITYUSERAGENTPROVIDER_H
#define FBADUTILITYUSERAGENTPROVIDER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdUtilityUserAgentProvider : NSObject

@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (nonatomic) NSInteger state; // ivar: _state
@property (copy, nonatomic) NSString *userAgent; // ivar: _userAgent
@property (retain, nonatomic) NSMutableArray *handlers; // ivar: _handlers


-(id)init;
// -(void)retrieveUserAgentWithHandler:(id)arg0 transformBlock:(unk)arg1  ;
-(void)enqueueCallback:(id)arg0 ;
-(void)invokeCallbacks;
// -(void)retriveUserAgentOnMainThreadComplete:(id)arg0 transformBlock:(unk)arg1  ;
+(id)shared;
// +(void)retrieveUserAgentWithHandler:(id)arg0 transformBlock:(unk)arg1  ;
+(void)fbad_internalClearUserAgent;


@end


#endif