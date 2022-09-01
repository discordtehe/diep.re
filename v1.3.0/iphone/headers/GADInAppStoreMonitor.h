// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINAPPSTOREMONITOR_H
#define GADINAPPSTOREMONITOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADWebAdView;
@class GADAd;
@class GADClickProtection;
@class GADObserverCollection;
@class GADStoreKitProductInlineRenderer;

@interface GADInAppStoreMonitor : NSObject {
    GADWebAdView *_webAdView;
    GADAd *_ad;
    GADClickProtection *_clickProtection;
    GADObserverCollection *_observers;
    NSMutableDictionary *_cachedStoreProductViewController;
    GADStoreKitProductInlineRenderer *_inlineRenderer;
}




-(id)initWithAd:(id)arg0 webAdView:(id)arg1 messageSource:(id)arg2 clickProtection:(id)arg3 ;
-(void)handleOpenInAppStoreAction:(id)arg0 ;
-(void)openInAppStoreWithProductID:(id)arg0 fallbackURL:(id)arg1 shouldWaitForFetch:(BOOL)arg2 ;
-(void)handleFetchInAppStoreAction:(id)arg0 ;
-(void)handlePrepareAnimation:(id)arg0 ;
-(void)handlePerformAnimation:(id)arg0 ;


@end


#endif