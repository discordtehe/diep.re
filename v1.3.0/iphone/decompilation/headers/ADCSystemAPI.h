// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCSYSTEMAPI_H
#define ADCSYSTEMAPI_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ADCMessage;
@class ADCStoreProductViewController;
@class ADCBrowser;
@class AdColonyNativeAdView;
@protocol SKStoreProductViewControllerDelegate;
@protocol MFMessageComposeViewControllerDelegate;
@protocol MFMailComposeViewControllerDelegate;

@interface ADCSystemAPI : NSObject <SKStoreProductViewControllerDelegate, MFMessageComposeViewControllerDelegate, MFMailComposeViewControllerDelegate>

 {
    ADCMessage *_currSMSMessage;
    ADCMessage *_currMailMessage;
    ADCMessage *_currStoreViewMessage;
    ADCStoreProductViewController *_storeViewVC;
    UIViewController *_storeViewPresentingVC;
    BOOL _showingStoreView;
    ADCBrowser *_browser;
    BOOL _browserReady;
    BOOL _showingBrowser;
}


@property (retain, nonatomic) AdColonyNativeAdView *currNativeAd; // ivar: _currNativeAd
@property (retain) NSString *preloadedProductId; // ivar: _preloadedProductId
@property BOOL openingStore; // ivar: _openingStore
@property NSUInteger preloadModuleId; // ivar: _preloadModuleId
@property (retain) NSString *openStoreProductInfoString; // ivar: _openStoreProductInfoString
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)sendOpenHookMessageWithUrl:(id)arg0 ;
-(void)openBrowser:(struct ? )arg0 ;
-(id)sanitizeProductInfo:(id)arg0 error:(*id)arg1 ;
-(id)productInfoStringWithId:(id)arg0 productInfo:(id)arg1 ;
-(void)openStore:(struct ? )arg0 ;
-(id)parseStoreIDFromURL:(id)arg0 ;
-(void)telephone:(struct ? )arg0 ;
-(BOOL)supportsPhoneCalls;
-(void)sms:(struct ? )arg0 ;
-(void)vibrate:(struct ? )arg0 ;
-(void)mail:(struct ? )arg0 ;
-(void)launchApp:(struct ? )arg0 ;
-(void)sendCreateCalendarResultMessage:(id)arg0 success:(BOOL)arg1 ;
-(void)createCalendarEventWithUrl:(id)arg0 message:(id)arg1 ;
-(void)createCalendarEvent:(struct ? )arg0 ;
-(void)checkSocialPresence:(struct ? )arg0 ;
-(void)socialPost:(struct ? )arg0 ;
-(id)getCanonicalSocialName:(id)arg0 ;
-(void)checkAppPresence:(struct ? )arg0 ;
-(void)saveScreenshot:(struct ? )arg0 ;
-(void)saveScreenshotResponse:(id)arg0 withError:(id)arg1 forMessage:(*void)arg2 ;
-(void)prepareBrowser:(struct ? )arg0 ;
-(void)makeInAppPurchase:(struct ? )arg0 ;
-(void)disableService:(struct ? )arg0 ;
-(void)preloadStore:(struct ? )arg0 ;
-(void)close:(struct ? )arg0 ;
-(void)mailComposeController:(id)arg0 didFinishWithResult:(NSInteger)arg1 error:(id)arg2 ;
-(void)messageComposeViewController:(id)arg0 didFinishWithResult:(NSInteger)arg1 ;
-(void)productViewControllerDidFinish:(id)arg0 ;
-(void)dismissStoreViewController;
-(void)moduleCleanup:(NSUInteger)arg0 ;
-(void)preBackgroundHandler:(id)arg0 ;
+(id)privateInstance;
+(void)registerHandlers;
+(void)load;
+(void)cleanupModule:(NSUInteger)arg0 ;
+(void)openURL:(id)arg0 options:(id)arg1 completionHandler:(id)arg2 ;
+(BOOL)isShowingStoreView;
+(BOOL)isShowingBrowser;


@end


#endif