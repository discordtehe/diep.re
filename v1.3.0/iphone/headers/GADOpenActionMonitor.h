// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOPENACTIONMONITOR_H
#define GADOPENACTIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADAd;
@class GADObserverCollection;
@class GADClickProtection;
@protocol GADWebAdViewDelegate;

@interface GADOpenActionMonitor : NSObject <GADWebAdViewDelegate>

 {
    GADAd *_ad;
    GADObserverCollection *_observers;
    BOOL _analyticsLoggingEnabled;
    NSMapTable *_confirmationAlertURLs;
    GADClickProtection *_clickProtection;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAd:(id)arg0 messageSource:(id)arg1 clickProtection:(id)arg2 analyticsLoggingEnabled:(BOOL)arg3 ;
-(void)handleClickAction:(id)arg0 ;
-(void)confirmURLNavigation:(id)arg0 ;
-(void)handleOpenApplicationWithURL:(id)arg0 navigationURL:(id)arg1 sourceURL:(id)arg2 ;
-(void)handleOpenApplicationAction:(id)arg0 ;
-(void)confirmClickToURL:(id)arg0 title:(id)arg1 ;
-(void)handleOpenBrowserAction:(id)arg0 ;
-(void)handleOpenSafariAction:(id)arg0 ;
-(void)openSafariViewControllerToURL:(id)arg0 ;
-(void)handleSMSAction:(id)arg0 ;
-(void)handleMailAction:(id)arg0 ;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;
-(void)adView:(id)arg0 runJavaScriptAlertPanelWithTitle:(id)arg1 message:(id)arg2 completionHandler:(id)arg3 ;
-(void)adView:(id)arg0 runJavaScriptConfirmPanelWithTitle:(id)arg1 message:(id)arg2 completionHandler:(id)arg3 ;
-(void)adView:(id)arg0 runJavaScriptTextInputPanelWithTitle:(id)arg1 defaultText:(id)arg2 prompt:(id)arg3 completionHandler:(id)arg4 ;


@end


#endif