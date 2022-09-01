// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADMOBBANNERLISTENERIOS_H
#define ADMOBBANNERLISTENERIOS_H


#import <Foundation/Foundation.h>

@protocol GADBannerViewDelegate;

@interface AdMobBannerListeneriOS : NSObject <GADBannerViewDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )findNetworkName:(id)arg0 ;
-(void)adViewDidReceiveAd:(id)arg0 ;
-(void)adView:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;
-(void)adViewWillPresentScreen:(id)arg0 ;
-(void)adViewWillDismissScreen:(id)arg0 ;
-(void)adViewDidDismissScreen:(id)arg0 ;
-(void)adViewWillLeaveApplication:(id)arg0 ;


@end


#endif