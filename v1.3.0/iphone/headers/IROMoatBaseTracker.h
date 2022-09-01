// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATBASETRACKER_H
#define IROMOATBASETRACKER_H


#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@protocol IROMoatTrackerDelegate;

@interface IROMoatBaseTracker : NSObject

@property (retain, nonatomic) NSNumber *trackerID; // ivar: _trackerID
@property (nonatomic) BOOL stoppedTracking; // ivar: _stoppedTracking
@property (retain) NSString *name; // ivar: _name
@property (weak) CALayer *trackedLayer; // ivar: _trackedLayer
@property BOOL isActive; // ivar: _isActive
@property BOOL isNativeDisplay; // ivar: _isNativeDisplay
@property BOOL isNativeVideo; // ivar: _isNativeVideo
@property (weak, nonatomic) NSObject<IROMoatTrackerDelegate> *trackerDelegate; // ivar: _trackerDelegate


-(id)init;
-(void)startTracking;
-(void)stopTracking;
-(void)notifyDelegateOfBadArgStart:(id)arg0 ;
-(id)getViewableState;
-(BOOL)checkFalseStart;
-(void)notifyDelegateOfStartFailure:(NSUInteger)arg0 reason:(id)arg1 ;


@end


#endif