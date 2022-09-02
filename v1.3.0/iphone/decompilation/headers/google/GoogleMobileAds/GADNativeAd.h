// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEAD_H
#define GADNATIVEAD_H

@protocol GADNativeAdDelegate;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;
@class GADInternalNativeAd;
@protocol GADMediaContentDisplaying;

@interface GADNativeAd : NSObject {
    GADObserverCollection *_adObservers;
    BOOL _mediaContentStatusReported;
    BOOL _mediaContentRendered;
    UIView *_adChoicesContentView;
}


@property (readonly, nonatomic) GADInternalNativeAd *internalNativeAd; // ivar: _internalNativeAd
@property (readonly, nonatomic) NSObject<GADMediaContentDisplaying> *internalMediaContent;
@property (readonly, nonatomic) NSString *adType;
@property (readonly, nonatomic) UIView *adChoicesContentView;
@property (weak, nonatomic) NSObject<GADNativeAdDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (readonly, copy, nonatomic) NSDictionary *extraAssets;
@property (readonly, copy, nonatomic) NSString *adNetworkClassName; // ivar: _adNetworkClassName


-(void)dealloc;
-(id)initWithInternalNativeAd:(id)arg0 ;
-(id)init;
-(void)reportIsMediaContentRendered:(BOOL)arg0 ;
-(void)postDidReceiveUnapprovedClickNotificationWithUserInfo:(id)arg0 ;
-(void)postDidMakeImpressionNotificationWithUserInfo:(id)arg0 ;
-(void)performClickWithData:(id)arg0 ;
-(void)reportTouchEventWithData:(id)arg0 ;
-(BOOL)recordImpressionWithData:(id)arg0 ;


@end


#endif