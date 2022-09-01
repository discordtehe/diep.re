// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef DFPBANNERVIEW_H
#define DFPBANNERVIEW_H

@protocol DFPCustomRenderedBannerViewDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADBannerView;
@class DFPInternalBannerView;
@class GADVideoController;
@protocol GADAppEventDelegate;
@protocol GADAppEventDelegate;
@protocol GADAdSizeDelegate;

@interface DFPBannerView : GADBannerView <GADAppEventDelegate>



@property (readonly, nonatomic) DFPInternalBannerView *bannerView;
@property (copy, nonatomic) NSString *adUnitID;
@property (weak, nonatomic) NSObject<GADAppEventDelegate> *appEventDelegate; // ivar: _appEventDelegate
@property (weak, nonatomic) NSObject<GADAdSizeDelegate> *adSizeDelegate;
@property (copy, nonatomic) NSArray *validAdSizes;
@property (nonatomic) BOOL enableManualImpressions;
@property (weak, nonatomic) NSObject<DFPCustomRenderedBannerViewDelegate> *customRenderedBannerViewDelegate; // ivar: _customRenderedBannerViewDelegate
@property (readonly, nonatomic) GADVideoController *videoController;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)correlator;
-(void)setCorrelator:(id)arg0 ;
-(struct CGSize )effectiveContentSize;
-(void)setAdOptions:(id)arg0 ;
-(void)recordImpression;
-(void)resize:(struct GADAdSize )arg0 ;
-(void)adView:(id)arg0 didReceiveAppEvent:(id)arg1 withInfo:(id)arg2 ;


@end


#endif