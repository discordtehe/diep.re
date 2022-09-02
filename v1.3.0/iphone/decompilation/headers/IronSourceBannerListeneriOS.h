// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IRONSOURCEBANNERLISTENERIOS_H
#define IRONSOURCEBANNERLISTENERIOS_H


#import <Foundation/Foundation.h>

@protocol ISBannerDelegate;

@interface IronSourceBannerListeneriOS : NSObject <ISBannerDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)bannerDidLoad:(id)arg0 ;
-(void)bannerDidFailToLoadWithError:(id)arg0 ;
-(void)didClickBanner;
-(void)bannerWillPresentScreen;
-(void)bannerDidDismissScreen;
-(void)bannerWillLeaveApplication;


@end


#endif