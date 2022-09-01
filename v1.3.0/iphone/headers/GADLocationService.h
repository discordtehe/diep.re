// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADLOCATIONSERVICE_H
#define GADLOCATIONSERVICE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@class GADLocation;
@class GADObserverCollection;
@protocol CLLocationManagerDelegate;

@interface GADLocationService : NSObject <CLLocationManagerDelegate>

 {
    CLLocationManager *_locationManager;
    GADLocation *_location;
    NSObject<OS_dispatch_queue> *_locationDataQueue;
    BOOL _featureEnabled;
    BOOL _publisherAuthorized;
    GADObserverCollection *_observers;
}


@property (readonly, copy, nonatomic) GADLocation *location;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)startUpdatingLocation;
-(void)disable;
-(void)updateLocation;
-(void)setFeatureEnabled:(BOOL)arg0 ;
-(void)setPublisherAuthorized:(BOOL)arg0 ;
-(void)locationManager:(id)arg0 didChangeAuthorizationStatus:(int)arg1 ;
-(void)locationManager:(id)arg0 didUpdateLocations:(id)arg1 ;
-(void)locationManager:(id)arg0 didFailWithError:(id)arg1 ;
+(id)sharedInstance;


@end


#endif