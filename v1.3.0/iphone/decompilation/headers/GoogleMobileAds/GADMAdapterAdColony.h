// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERADCOLONY_H
#define GADMADAPTERADCOLONY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class AdColonyInterstitial;
@protocol GADMAdNetworkAdapter;
@protocol GADMAdNetworkConnector;

@interface GADMAdapterAdColony : NSObject <GADMAdNetworkAdapter>



@property (retain) AdColonyInterstitial *ad; // ivar: _ad
@property (retain) NSString *appId; // ivar: _appId
@property (retain) NSString *currentZone; // ivar: _currentZone
@property (retain) NSArray *zones; // ivar: _zones
@property (weak) NSObject<GADMAdNetworkConnector> *connector; // ivar: _connector
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithGADMAdNetworkConnector:(id)arg0 ;
-(void)getInterstitial;
-(void)getInterstitialFromZoneId:(id)arg0 withConnector:(id)arg1 ;
-(void)presentInterstitialFromRootViewController:(id)arg0 ;
-(void)getBannerWithSize:(struct GADAdSize )arg0 ;
-(BOOL)isBannerAnimationOK:(NSInteger)arg0 ;
-(void)stopBeingDelegate;
+(Class)mainAdapterClass;
+(Class)networkExtrasClass;


@end


#endif