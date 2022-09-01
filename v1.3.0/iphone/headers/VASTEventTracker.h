// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VASTEVENTTRACKER_H
#define VASTEVENTTRACKER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VASTEventTracker : NSObject

@property (nonatomic) BOOL trackersFired; // ivar: _trackersFired
@property (retain, nonatomic) NSArray *trackingEvents; // ivar: _trackingEvents


+(id)eventTrackerWithMPVastTrackingEvents:(id)arg0 ;
+(id)eventTrackerWithURLs:(id)arg0 ;


@end


#endif