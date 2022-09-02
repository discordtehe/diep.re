// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCOMMANDPROCESSOR_H
#define FBADCOMMANDPROCESSOR_H


#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>

@class FBInterstitialDisplayAdInternal;
@class FBStoreProductViewController;
@protocol FBStoreProductViewControllerDelegate;
@protocol FBAdSafariViewControllerDelegate;
@protocol FBInterstitialAdInternalDelegate;
@protocol SKStoreProductViewControllerDelegate;
@protocol FBAdCommandProcessorDelegate;

@interface FBAdCommandProcessor : NSObject <FBStoreProductViewControllerDelegate, FBAdSafariViewControllerDelegate, FBInterstitialAdInternalDelegate, SKStoreProductViewControllerDelegate>



@property (copy, nonatomic) NSString *inlineClientToken; // ivar: _inlineClientToken
@property (copy, nonatomic) id *completionHandler; // ivar: _completionHandler
@property (retain, nonatomic) FBInterstitialDisplayAdInternal *interstitialAd; // ivar: _interstitialAd
@property (weak, nonatomic) FBStoreProductViewController *productViewController; // ivar: _productViewController
@property (weak, nonatomic) SKStoreProductViewController *skStoreProductViewController; // ivar: _skStoreProductViewController
@property (nonatomic) CGFloat appStoreSheetOpenTimeMs; // ivar: _appStoreSheetOpenTimeMs
@property (weak, nonatomic) NSObject<FBAdCommandProcessorDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(BOOL)processCommand:(id)arg0 ;
-(BOOL)processCommand:(id)arg0 inlineClientToken:(id)arg1 completionHandler:(id)arg2 ;
// -(BOOL)processCommand:(id)arg0 inlineClientToken:(id)arg1 completionHandler:(id)arg2 skipAppStore:(unk)arg3  ;
-(BOOL)processCommand:(id)arg0 withExtraData:(id)arg1 inlineClientToken:(id)arg2 skipAppStore:(BOOL)arg3 completionHandler:(id)arg4 ;
-(BOOL)openURL:(id)arg0 nameValuePairs:(id)arg1 mutableExtraData:(id)arg2 skipAppStore:(BOOL)arg3 ;
-(BOOL)launchAppForEngagement:(id)arg0 ;
-(id)openInAppAppStoreUsingFB:(id)arg0 ;
-(id)openInAppAppStoreUsingSK:(id)arg0 ;
-(id)openAppStore:(id)arg0 ;
-(BOOL)openLinkInApp:(id)arg0 withAdAction:(NSInteger)arg1 ;
-(BOOL)launchURLOutOfApp:(id)arg0 withAdAction:(NSInteger)arg1 ;
-(void)callCompletionHandlerForCommand:(NSInteger)arg0 withAdAction:(NSInteger)arg1 ;
-(void)doneCommandProcessing;
-(void)logLocalUserReturnEvent;
-(BOOL)isValidViewController:(id)arg0 ;
-(void)productViewControllerDidFinish:(id)arg0 ;
-(void)viewControllerCompleted:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(void)interstitialAdDidClose:(id)arg0 ;
+(void)initialize;
+(BOOL)shouldInvalidate:(id)arg0 ;
+(BOOL)isValidOpenAppStoreCommand:(id)arg0 ;
+(BOOL)isValidBrowseCommand:(id)arg0 ;
+(id)getLinkFromCommandURL:(id)arg0 ;


@end


#endif