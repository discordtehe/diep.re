// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATLOCATIONMANAGER_H
#define IROMOATLOCATIONMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreFoundation/CoreFoundation.h>

@class IROMoatLocationFetch;
@protocol CLLocationManagerDelegate;

@interface IROMoatLocationManager : NSObject <CLLocationManagerDelegate>



@property (retain, nonatomic) CLLocationManager *cl_locationManager; // ivar: _cl_locationManager
@property (retain, nonatomic) IROMoatLocationFetch *currentLocationFetch; // ivar: _currentLocationFetch
@property (retain, nonatomic) NSTimer *locationFetchTimer; // ivar: _locationFetchTimer
@property (retain, nonatomic) NSTimer *fetchTimeoutTimer; // ivar: _fetchTimeoutTimer
@property (retain, nonatomic) CLLocation *bestLocation; // ivar: _bestLocation
@property (nonatomic) int authorizationStatus; // ivar: _authorizationStatus
@property (nonatomic) CGFloat maxLocationAge; // ivar: _maxLocationAge
@property (nonatomic) CGFloat desiredAccuracy; // ivar: _desiredAccuracy
@property (nonatomic) CGFloat locationFetchInterval; // ivar: _locationFetchInterval
@property (nonatomic) CGFloat locationFetchTimeout; // ivar: _locationFetchTimeout
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)commonInit;
-(void)receivedWillEnterForegroundNotification:(id)arg0 ;
-(void)receivedDidEnterBackgroundNotification:(id)arg0 ;
-(void)resetFetchTimer;
-(BOOL)shouldStartNewFetch;
-(void)startLocationFetch;
-(void)stopCurrentFetch;
-(BOOL)locationServicesAvailable;
-(void)locationManager:(id)arg0 didChangeAuthorizationStatus:(int)arg1 ;
-(void)locationManager:(id)arg0 didUpdateLocations:(id)arg1 ;
-(void)fetchDidTimeout;
+(id)sharedInstance;
+(void)setLocationServicesBlacklisted:(BOOL)arg0 ;
+(BOOL)locationServicesBlacklisted;
+(id)chooseBestLocation:(id)arg0 compareAgainst:(id)arg1 ;
+(NSUInteger)isValidLocation:(id)arg0 ;
+(BOOL)isAccurateEnoughLocation:(id)arg0 ;
+(BOOL)isOutdatedLocation:(id)arg0 ;


@end


#endif