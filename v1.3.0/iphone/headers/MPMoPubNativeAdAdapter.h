// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPMOPUBNATIVEADADAPTER_H
#define MPMOPUBNATIVEADADAPTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPAdImpressionTimer;
@class MPAdDestinationDisplayAgent;
@class MPAdConfiguration;
@protocol MPAdDestinationDisplayAgentDelegate;
@protocol MPAdImpressionTimerDelegate;
@protocol MPNativeAdAdapter;
@protocol MPNativeAdAdapterDelegate;

@interface MPMoPubNativeAdAdapter : NSObject <MPAdDestinationDisplayAgentDelegate, MPAdImpressionTimerDelegate, MPNativeAdAdapter>



@property (retain, nonatomic) MPAdImpressionTimer *impressionTimer; // ivar: _impressionTimer
@property (retain, nonatomic) MPAdDestinationDisplayAgent *destinationDisplayAgent; // ivar: _destinationDisplayAgent
@property (weak, nonatomic) NSObject<MPNativeAdAdapterDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSArray *impressionTrackerURLs; // ivar: _impressionTrackerURLs
@property (readonly, nonatomic) NSArray *clickTrackerURLs; // ivar: _clickTrackerURLs
@property (retain, nonatomic) MPAdConfiguration *adConfiguration; // ivar: _adConfiguration
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) NSDictionary *properties; // ivar: _properties
@property (readonly, nonatomic) NSURL *defaultActionURL; // ivar: _defaultActionURL


-(id)initWithAdProperties:(id)arg0 ;
-(void)dealloc;
-(void)willAttachToView:(id)arg0 ;
-(void)displayContentForURL:(id)arg0 rootViewController:(id)arg1 ;
-(void)displayContentForDAAIconTap;
-(void)adViewWillLogImpression:(id)arg0 ;
-(id)viewControllerForPresentingModalView;
-(void)displayAgentWillPresentModal;
-(void)displayAgentWillLeaveApplication;
-(void)displayAgentDidDismissModal;


@end


#endif