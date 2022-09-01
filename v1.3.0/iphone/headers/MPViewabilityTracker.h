// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVIEWABILITYTRACKER_H
#define MPVIEWABILITYTRACKER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPViewabilityTracker : NSObject

@property (retain, nonatomic) NSDictionary *trackers; // ivar: _trackers


-(id)initWithAdView:(id)arg0 isVideo:(BOOL)arg1 startTrackingImmediately:(BOOL)arg2 ;
-(id)initializeTrackerWithClassName:(id)arg0 forViewabilityOption:(NSInteger)arg1 withAdView:(id)arg2 isVideo:(BOOL)arg3 startTrackingImmediately:(BOOL)arg4 ;
-(void)dealloc;
-(void)startTracking;
-(void)stopTracking:(NSInteger)arg0 ;
-(void)stopTracking;
-(void)registerFriendlyObstructionView:(id)arg0 ;
-(void)onDisableViewabilityTrackingForNotification:(id)arg0 ;
+(void)initialize;
+(NSInteger)enabledViewabilityVendors;
+(void)disableViewability:(NSInteger)arg0 ;


@end


#endif