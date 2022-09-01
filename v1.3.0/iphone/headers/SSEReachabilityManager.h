// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSEREACHABILITYMANAGER_H
#define SSEREACHABILITYMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class SSEReachability;

@interface SSEReachabilityManager : NSObject {
    SSEReachability *reachability;
}


@property (nonatomic) NSInteger reachabiltyNetworkStatus; // ivar: _reachabiltyNetworkStatus
@property (retain, nonatomic) NSMutableArray *delegates; // ivar: _delegates


-(id)init;
-(void)dealloc;
-(void)addDelegate:(id)arg0 ;
-(void)removeDelegate:(id)arg0 ;
-(void)startNotifyingOfInternetChanges;
-(id)getReachabilityObject;
-(void)reachabilityChanged:(id)arg0 ;
+(id)sharedManager;
+(BOOL)checkReachability;


@end


#endif