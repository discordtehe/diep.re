// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNMOATMANAGER_H
#define ISNMOATMANAGER_H


#import <Foundation/Foundation.h>

@class IROMoatWebTracker;
@protocol IROMoatTrackerDelegate;
@protocol ISNMOATManagerDelegate;

@interface ISNMOATManager : NSObject <IROMoatTrackerDelegate>



@property (retain) IROMoatWebTracker *tracker; // ivar: _tracker
@property (weak, nonatomic) NSObject<ISNMOATManagerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)initWithOptions:(id)arg0 ;
-(void)createAdTrackerWithAdView:(id)arg0 ;
-(void)startTracking;
-(void)stopTracking;
-(id)optionsFromParams:(id)arg0 ;
-(void)trackerStartedTracking:(id)arg0 ;
-(void)trackerStoppedTracking:(id)arg0 ;
-(void)tracker:(id)arg0 failedToStartTracking:(NSUInteger)arg1 reason:(id)arg2 ;
+(id)sharedInstance;


@end


#endif