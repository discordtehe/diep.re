// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCONTENTTRACKER_H
#define TJCONTENTTRACKER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TJContentTracker : NSObject

@property (retain, nonatomic) NSMutableDictionary *dimensionDict; // ivar: _dimensionDict
@property (retain, nonatomic) NSMutableDictionary *eventTrackers; // ivar: _eventTrackers


-(id)initWithPlacementName:(id)arg0 placementType:(id)arg1 contentType:(id)arg2 ;
-(id)startTrackingEvent:(id)arg0 ;
-(id)startTrackingEvent:(id)arg0 dimensions:(id)arg1 values:(id)arg2 ;
-(id)endTrackingEvent:(id)arg0 ;
-(id)endTrackingEvent:(id)arg0 dimensions:(id)arg1 values:(id)arg2 ;
-(id)sendTrackingEvent:(id)arg0 dimensions:(id)arg1 values:(id)arg2 ;
-(id)removeEventTracker:(id)arg0 ;
-(id)startContentRenderTracking;
-(id)contentDidRender;
-(void)contentWasDismissed;
-(void)addDimension:(id)arg0 value:(id)arg1 ;


@end


#endif