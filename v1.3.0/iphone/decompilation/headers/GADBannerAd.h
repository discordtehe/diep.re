// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADBANNERAD_H
#define GADBANNERAD_H


#import <UIKit/UIKit.h>

@class GADAd;
@class GADAdVideoController;

@interface GADBannerAd : GADAd

@property (readonly, nonatomic) UIView *adView; // ivar: _adView
@property (readonly, nonatomic) GADAdVideoController *videoController; // ivar: _videoController


-(id)initWithContext:(id)arg0 adView:(id)arg1 metadata:(id)arg2 videoController:(id)arg3 ;
-(void)dealloc;


@end


#endif