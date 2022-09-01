// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBADAPTERMEDIATEDNATIVEAD_H
#define MOPUBADAPTERMEDIATEDNATIVEAD_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class GADNativeAdImage;
@class MPNativeAd;
@class MPAdDestinationDisplayAgent;
@class GADNativeAdViewAdOptions;
@class GADMoPubNetworkExtras;
@protocol GADMediatedNativeAdDelegate;
@protocol MPAdDestinationDisplayAgentDelegate;
@protocol GADMediatedNativeAppInstallAd;

@interface MoPubAdapterMediatedNativeAd : NSObject <GADMediatedNativeAdDelegate, MPAdDestinationDisplayAgentDelegate, GADMediatedNativeAppInstallAd>



@property (copy, nonatomic) NSArray *mappedImages; // ivar: _mappedImages
@property (copy, nonatomic) GADNativeAdImage *mappedLogo; // ivar: _mappedLogo
@property (copy, nonatomic) NSDictionary *extras; // ivar: _extras
@property (copy, nonatomic) MPNativeAd *nativeAd; // ivar: _nativeAd
@property (copy, nonatomic) NSDictionary *nativeAdProperties; // ivar: _nativeAdProperties
@property (retain, nonatomic) MPAdDestinationDisplayAgent *displayDestinationAgent; // ivar: _displayDestinationAgent
@property (retain, nonatomic) UIViewController *baseViewController; // ivar: _baseViewController
@property (retain, nonatomic) GADNativeAdViewAdOptions *nativeAdViewOptions; // ivar: _nativeAdViewOptions
@property (retain, nonatomic) GADMoPubNetworkExtras *networkExtras; // ivar: _networkExtras
@property (retain, nonatomic) UIImageView *privacyIconImageView; // ivar: _privacyIconImageView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithMoPubNativeAd:(id)arg0 mappedImages:(id)arg1 nativeAdViewOptions:(id)arg2 networkExtras:(id)arg3 ;
-(id)headline;
-(id)body;
-(id)icon;
-(id)images;
-(id)callToAction;
-(id)advertiser;
-(id)extraAssets;
-(id)starRating;
-(id)store;
-(id)price;
-(id)mediatedNativeAdDelegate;
-(void)privacyIconTapped;
-(void)mediatedNativeAd:(id)arg0 didRenderInView:(id)arg1 viewController:(id)arg2 ;
-(void)mediatedNativeAd:(id)arg0 didRecordClickOnAssetWithName:(id)arg1 view:(id)arg2 viewController:(id)arg3 ;
-(id)mediaView;
-(void)mediatedNativeAd:(id)arg0 didUntrackView:(id)arg1 ;
-(id)viewControllerForPresentingModalView;
-(void)displayAgentDidDismissModal;
-(void)displayAgentWillPresentModal;
-(void)displayAgentWillLeaveApplication;


@end


#endif