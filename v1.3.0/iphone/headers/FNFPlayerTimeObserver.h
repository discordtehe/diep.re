// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFPLAYERTIMEOBSERVER_H
#define FNFPLAYERTIMEOBSERVER_H

@protocol OS_dispatch_source;

#import <Foundation/Foundation.h>


@interface FNFPlayerTimeObserver : NSObject

@property (nonatomic) ? interval; // ivar: _interval
@property (copy, nonatomic) id *block; // ivar: _block
@property (retain, nonatomic) NSObject<OS_dispatch_source> *timer; // ivar: _timer
@property (nonatomic) BOOL fireOnceAtExactTime; // ivar: _fireOnceAtExactTime
@property (nonatomic) BOOL followMasterClock; // ivar: _followMasterClock
@property (nonatomic) BOOL suspended; // ivar: _suspended




@end


#endif