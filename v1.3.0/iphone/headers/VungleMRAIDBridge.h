// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEMRAIDBRIDGE_H
#define VUNGLEMRAIDBRIDGE_H


#import <Foundation/Foundation.h>

@class VungleWebViewFacade;
@class VungleNativeCommandHandler;
@protocol WKNavigationDelegate;
@protocol VungleNativeCommandHandlerDelegate;
@protocol VungleMRAIDBridgeDelegate;
@protocol VungleMRAIDReportBuilderProtocol;

@interface VungleMRAIDBridge : NSObject <WKNavigationDelegate, VungleNativeCommandHandlerDelegate>



@property (retain, nonatomic) VungleWebViewFacade *webViewFacade; // ivar: _webViewFacade
@property (retain, nonatomic) VungleNativeCommandHandler *commandHandler; // ivar: _commandHandler
@property (nonatomic) BOOL isConsentDialogRequired; // ivar: _isConsentDialogRequired
@property (weak, nonatomic) NSObject<VungleMRAIDBridgeDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) NSObject<VungleMRAIDReportBuilderProtocol> *reportBuilderDelegate; // ivar: _reportBuilderDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithWebViewFacade:(id)arg0 delegate:(id)arg1 ;
-(void)loadHTMLFileWithURL:(id)arg0 cacheableReplacements:(id)arg1 nonCacheableReplacements:(id)arg2 viewProperties:(id)arg3 ;
-(void)dispatchPropertiesChangeWithDictionary:(id)arg0 ;
-(void)dispatchPrepareStoreViewSuccessful;
-(void)dispatchPreprentStoreViewFinished;
-(id)finishResultBlock:(SEL)arg0 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(BOOL)handleBridgeActionWithRequest:(id)arg0 ;
-(id)readyJSExpressionWithCacheableReplacements:(id)arg0 nonCacheableReplacements:(id)arg1 ;
-(id)propertiesChangeJSExpressionWithProperties:(id)arg0 ;
-(void)commandHandlerHandleMRAIDClose:(id)arg0 ;
-(void)commandHandler:(id)arg0 handleMRAIDOpenCallForURL:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleMRAIDCustomClose:(NSInteger)arg1 ;
-(void)commandHandler:(id)arg0 handleMRAIDSetOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg1 ;
-(void)commandHandler:(id)arg0 handleTPAT:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleConsentAction:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleUIAction:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleUIAction:(id)arg1 withValue:(id)arg2 ;
-(void)commandHandler:(id)arg0 handleSuccessfulView:(BOOL)arg1 ;
-(void)commandHandler:(id)arg0 handleErrorCode:(id)arg1 ;
-(void)commandHandler:(id)arg0 handlePrepareStoreViewWithAppStoreParameters:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleExpandWith:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleResizeWtih:(id)arg1 ;
-(id)MRAIDJSInjectionError;
-(id)localAdTemplateRequestErrorWithError:(id)arg0 ;
-(void)dealloc;
+(id)parseCommandFromRequest:(id)arg0 ;
+(id)parseParametersFromRequest:(id)arg0 ;


@end


#endif