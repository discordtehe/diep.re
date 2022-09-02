// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSEARCHBANNERVIEW_H
#define GADSEARCHBANNERVIEW_H



@class GADBannerView;
@protocol GADAdSizeDelegate;

@interface GADSearchBannerView : GADBannerView

@property (weak, nonatomic) NSObject<GADAdSizeDelegate> *adSizeDelegate;


+(Class)bannerViewClass;


@end


#endif