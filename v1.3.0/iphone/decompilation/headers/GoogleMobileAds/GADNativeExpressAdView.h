// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEEXPRESSADVIEW_H
#define GADNATIVEEXPRESSADVIEW_H

@protocol GADNativeExpressAdViewDelegate;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class GADVideoController;

@interface GADNativeExpressAdView : UIView

@property (readonly, nonatomic) GADVideoController *videoController; // ivar: _videoController
@property (copy, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (nonatomic) GADAdSize adSize; // ivar: _adSize
@property (weak, nonatomic) NSObject<GADNativeExpressAdViewDelegate> *delegate; // ivar: _delegate
@property (nonatomic, getter=isAutoloadEnabled) BOOL autoloadEnabled; // ivar: _autoloadEnabled
@property (readonly, weak, nonatomic) NSString *adNetworkClassName; // ivar: _adNetworkClassName


-(id)initWithFrame:(struct CGRect )arg0 adSize:(struct GADAdSize )arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithAdSize:(struct GADAdSize )arg0 ;
-(id)initWithAdSize:(struct GADAdSize )arg0 origin:(struct CGPoint )arg1 ;
-(void)loadRequest:(id)arg0 ;
-(void)setAdOptions:(id)arg0 ;


@end


#endif