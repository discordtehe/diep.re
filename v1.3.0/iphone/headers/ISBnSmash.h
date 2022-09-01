// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISBNSMASH_H
#define ISBNSMASH_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class ISBaseAdapter;
@class ISAdapterConfig;
@class ISBannerSize;
@protocol ISBannerAdapterDelegate;
@protocol ISBnSmashDelegate;

@interface ISBnSmash : NSObject <ISBannerAdapterDelegate>

 {
    NSTimer *_timer;
    ISBaseAdapter *_adapter;
    ISAdapterConfig *_adapterConfig;
    NSInteger _state;
    UIViewController *_viewController;
    ISBannerSize *_bannerSize;
    BOOL _consent;
    BOOL _didSetConsent;
}


@property (weak, nonatomic) NSObject<ISBnSmashDelegate> *delegate; // ivar: _delegate
@property BOOL isReadyToLoad; // ivar: _isReadyToLoad
@property (readonly, nonatomic) NSString *instanceName;
@property (nonatomic) NSInteger providerPriority; // ivar: _providerPriority
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdapterConfig:(id)arg0 adapter:(id)arg1 ;
-(void)loadBanner:(id)arg0 size:(id)arg1 ;
-(void)destroyBanner;
-(void)reloadBanner;
-(void)setConsent:(BOOL)arg0 ;
-(void)setCustomParams;
-(void)setState:(NSInteger)arg0 ;
-(id)getProviderEventDictionary;
-(void)startTimer;
-(void)stopTimer;
-(void)log:(id)arg0 ;
-(void)onTick:(id)arg0 ;
-(void)adapterBannerInitSuccess;
-(void)adapterBannerInitFailedWithError:(id)arg0 ;
-(void)adapterBannerDidLoad:(id)arg0 ;
-(void)adapterBannerDidFailToLoadWithError:(id)arg0 ;
-(void)adapterBannerDidClick;
-(void)adapterBannerWillPresentScreen;
-(void)adapterBannerDidDismissScreen;
-(void)adapterBannerWillLeaveApplication;
+(BOOL)isAdapterCompatible:(id)arg0 ;


@end


#endif