// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATNATIVEDISPLAYTRACKER_H
#define IROMOATNATIVEDISPLAYTRACKER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class IROMoatBaseTracker;
@protocol UIGestureRecognizerDelegate;

@interface IROMoatNativeDisplayTracker : IROMoatBaseTracker <UIGestureRecognizerDelegate>



@property (weak) UIView *adView; // ivar: _adView
@property (retain) NSDictionary *adIds; // ivar: _adIds
@property BOOL cleanedUp; // ivar: _cleanedUp
@property BOOL initialized; // ivar: _initialized
@property (retain) NSMutableSet *userInteractionEvents; // ivar: _userInteractionEvents
@property (retain) NSMutableArray *getstureRecognizers; // ivar: _getstureRecognizers
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)startTracking;
-(void)stopTracking;
-(id)initWithAdView:(id)arg0 withAdIds:(id)arg1 ;
-(void)addTouchGestureRecognizers:(id)arg0 ;
-(void)handleUserInteraction:(id)arg0 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;
-(id)userInteractionEventAsString:(NSUInteger)arg0 ;
-(id)getAdSizeAsJson;
-(id)getAdInfoAsJson;
-(id)getUserInteractionEventAsJson:(NSUInteger)arg0 ;
-(void)cleanUp;
-(void)dealloc;
+(id)trackerWithAdView:(id)arg0 withAdIds:(id)arg1 ;
+(id)getAdIdsAsJson:(id)arg0 ;


@end


#endif