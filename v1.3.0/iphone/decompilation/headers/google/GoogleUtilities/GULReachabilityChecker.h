// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULREACHABILITYCHECKER_H
#define GULREACHABILITYCHECKER_H


#import <Foundation/Foundation.h>

@protocol GULReachabilityDelegate;

@interface GULReachabilityChecker : NSObject

@property (nonatomic) *GULReachabilityApi reachabilityApi; // ivar: reachabilityApi_
@property (nonatomic) int reachabilityStatus; // ivar: reachabilityStatus_
@property (copy, nonatomic) NSString *host; // ivar: host_
@property (nonatomic) *__SCNetworkReachability reachability; // ivar: reachability_
@property (weak, nonatomic) NSObject<GULReachabilityDelegate> *reachabilityDelegate; // ivar: reachabilityDelegate_
@property (readonly, nonatomic) BOOL isActive;


-(id)initWithReachabilityDelegate:(id)arg0 withHost:(id)arg1 ;
-(void)dealloc;
-(BOOL)start;
-(void)stop;
-(int)statusForFlags:(unsigned int)arg0 ;
-(void)reachabilityFlagsChanged:(unsigned int)arg0 ;


@end


#endif