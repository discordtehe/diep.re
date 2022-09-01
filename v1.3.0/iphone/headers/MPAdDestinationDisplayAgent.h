// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADDESTINATIONDISPLAYAGENT_H
#define MPADDESTINATIONDISPLAYAGENT_H


#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>
#import <SafariServices/SafariServices.h>

@class MPURLResolver;
@class MPProgressOverlayView;
@class MPTelephoneConfirmationController;
@class MPActivityViewControllerHelper;
@protocol SFSafariViewControllerDelegate;
@protocol MPProgressOverlayViewDelegate;
@protocol MPSKStoreProductViewControllerDelegate;
@protocol MPActivityViewControllerHelperDelegate;
@protocol MPAdDestinationDisplayAgentDelegate;

@interface MPAdDestinationDisplayAgent : NSObject <SFSafariViewControllerDelegate, MPProgressOverlayViewDelegate, MPSKStoreProductViewControllerDelegate, MPActivityViewControllerHelperDelegate>



@property (retain, nonatomic) MPURLResolver *resolver; // ivar: _resolver
@property (retain, nonatomic) MPURLResolver *enhancedDeeplinkFallbackResolver; // ivar: _enhancedDeeplinkFallbackResolver
@property (retain, nonatomic) MPProgressOverlayView *overlayView; // ivar: _overlayView
@property (nonatomic) BOOL isLoadingDestination; // ivar: _isLoadingDestination
@property (nonatomic) NSInteger displayAgentType; // ivar: _displayAgentType
@property (retain, nonatomic) SKStoreProductViewController *storeKitController; // ivar: _storeKitController
@property (retain, nonatomic) SFSafariViewController *safariController; // ivar: _safariController
@property (retain, nonatomic) MPTelephoneConfirmationController *telephoneConfirmationController; // ivar: _telephoneConfirmationController
@property (retain, nonatomic) MPActivityViewControllerHelper *activityViewControllerHelper; // ivar: _activityViewControllerHelper
@property (weak, nonatomic) NSObject<MPAdDestinationDisplayAgentDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)dismissAllModalContent;
-(void)displayDestinationForURL:(id)arg0 ;
-(void)cancel;
-(BOOL)handleSuggestedURLAction:(id)arg0 isResolvingEnhancedDeeplink:(BOOL)arg1 ;
-(void)handleEnhancedDeeplinkRequest:(id)arg0 ;
-(void)handleEnhancedDeeplinkFallbackForRequest:(id)arg0 ;
-(void)showWebViewWithHTMLString:(id)arg0 baseURL:(id)arg1 actionType:(NSUInteger)arg2 ;
-(void)showAdBrowserController;
-(void)showStoreKitProductWithParameters:(id)arg0 fallbackURL:(id)arg1 ;
-(void)openURLInApplication:(id)arg0 ;
-(BOOL)openShareURL:(id)arg0 ;
-(void)interceptTelephoneURL:(id)arg0 ;
-(void)failedToResolveURLWithError:(id)arg0 ;
-(void)completeDestinationLoading;
-(void)presentStoreKitControllerWithProductParameters:(id)arg0 fallbackURL:(id)arg1 ;
-(void)productViewControllerDidFinish:(id)arg0 ;
-(void)safariViewControllerDidFinish:(id)arg0 ;
-(void)overlayCancelButtonPressed;
-(void)hideModalAndNotifyDelegate;
-(void)hideOverlay;
-(id)viewControllerForPresentingActivityViewController;
-(void)activityViewControllerWillPresent;
-(void)activityViewControllerDidDismiss;
-(void)showStoreKitWithAction:(id)arg0 ;
+(id)agentWithDelegate:(id)arg0 ;
+(BOOL)shouldDisplayContentInApp;


@end


#endif