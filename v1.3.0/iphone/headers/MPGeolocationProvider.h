// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPGEOLOCATIONPROVIDER_H
#define MPGEOLOCATIONPROVIDER_H


#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPTimer;
@protocol CLLocationManagerDelegate;

@interface MPGeolocationProvider : NSObject <CLLocationManagerDelegate>



@property (retain, nonatomic) CLLocation *lastKnownLocation; // ivar: _lastKnownLocation
@property (retain, nonatomic) CLLocationManager *locationManager; // ivar: _locationManager
@property (nonatomic) BOOL authorizedForLocationServices; // ivar: _authorizedForLocationServices
@property (retain, nonatomic) NSDate *timeOfLastLocationUpdate; // ivar: _timeOfLastLocationUpdate
@property (retain, nonatomic) MPTimer *nextLocationUpdateTimer; // ivar: _nextLocationUpdateTimer
@property (retain, nonatomic) MPTimer *locationUpdateDurationTimer; // ivar: _locationUpdateDurationTimer
@property (nonatomic) BOOL rawLocationUpdatesEnabled; // ivar: _rawLocationUpdatesEnabled
@property (nonatomic) BOOL locationUpdatesEnabled;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)startOrStopLocationUpdates;
-(BOOL)isAuthorizedStatus:(int)arg0 ;
-(void)startRecurringLocationUpdates;
-(void)currentLocationUpdateDidFinish;
-(void)scheduleNextLocationUpdateAfterDelay:(CGFloat)arg0 ;
-(void)stopAllCurrentOrScheduledLocationUpdates;
-(void)resumeLocationUpdatesAfterBackgrounding;
-(BOOL)isLocation:(id)arg0 betterThanLocation:(id)arg1 ;
-(BOOL)locationHasValidCoordinates:(id)arg0 ;
-(BOOL)isLocation:(id)arg0 olderThanLocation:(id)arg1 ;
-(void)locationManager:(id)arg0 didChangeAuthorizationStatus:(int)arg1 ;
-(void)locationManager:(id)arg0 didUpdateLocations:(id)arg1 ;
-(void)locationManager:(id)arg0 didFailWithError:(id)arg1 ;
-(void)consentStateChanged:(id)arg0 ;
+(id)sharedProvider;


@end


#endif