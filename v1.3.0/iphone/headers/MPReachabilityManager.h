// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPREACHABILITYMANAGER_H
#define MPREACHABILITYMANAGER_H


#import <Foundation/Foundation.h>

@class MPReachability;

@interface MPReachabilityManager : NSObject

@property (retain, nonatomic) MPReachability *reachability; // ivar: _reachability
@property (readonly, nonatomic) NSInteger currentStatus;


-(id)init;
-(void)dealloc;
-(void)startMonitoring;
-(void)stopMonitoring;
+(id)sharedManager;


@end


#endif