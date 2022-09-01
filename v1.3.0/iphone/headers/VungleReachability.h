// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEREACHABILITY_H
#define VUNGLEREACHABILITY_H


#import <Foundation/Foundation.h>


@interface VungleReachability : NSObject {
    *__SCNetworkReachability _reachabilityRef;
}


@property (nonatomic) BOOL wifiAvailable; // ivar: _wifiAvailable
@property (nonatomic) BOOL networkAvailable; // ivar: _networkAvailable


-(id)initWithReachabilityURL:(id)arg0 ;
-(void)dealloc;


@end


#endif