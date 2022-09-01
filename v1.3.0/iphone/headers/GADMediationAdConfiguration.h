// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONADCONFIGURATION_H
#define GADMEDIATIONADCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADTargeting;
@class GADRootViewControllerProvider;
@class GADMediationCredentials;
@protocol GADAdNetworkExtras;

@interface GADMediationAdConfiguration : NSObject {
    *NSDictionary _adConfiguration;
    GADTargeting *_targeting;
}


@property (retain, nonatomic) GADRootViewControllerProvider *viewControllerProvider; // ivar: _viewControllerProvider
@property (readonly, nonatomic) NSString *bidResponse;
@property (readonly, nonatomic) UIViewController *topViewController;
@property (readonly, nonatomic) GADMediationCredentials *credentials; // ivar: _credentials
@property (readonly, nonatomic) NSData *watermark;
@property (readonly, nonatomic) NSObject<GADAdNetworkExtras> *extras; // ivar: _extras
@property (readonly, nonatomic) NSNumber *childDirectedTreatment;
@property (readonly, nonatomic) BOOL isTestRequest;
@property (readonly, nonatomic) BOOL hasUserLocation;
@property (readonly, nonatomic) CGFloat userLatitude;
@property (readonly, nonatomic) CGFloat userLongitude;
@property (readonly, nonatomic) CGFloat userLocationAccuracyInMeters;


-(id)initWithAdConfiguration:(struct NSDictionary *)arg0 targeting:(id)arg1 credentials:(id)arg2 extras:(id)arg3 ;
-(id)userLocationDescription;
-(id)init;


@end


#endif