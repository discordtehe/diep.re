// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLENATIVECOMMANDHANDLER_H
#define VUNGLENATIVECOMMANDHANDLER_H


#import <Foundation/Foundation.h>

@class VNGOperationQueue;
@class VungleWebViewFacade;
@protocol VungleJSCommandDelegate;
@protocol VungleMRAIDCommandDelegate;
@protocol VungleNativeCommandHandlerDelegate;

@interface VungleNativeCommandHandler : NSObject <VungleJSCommandDelegate, VungleMRAIDCommandDelegate>



@property (weak, nonatomic) NSObject<VungleNativeCommandHandlerDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) VNGOperationQueue *javascriptCommandQueue; // ivar: _javascriptCommandQueue
@property (retain, nonatomic) VungleWebViewFacade *webViewFacade; // ivar: _webViewFacade
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 webViewFacade:(id)arg1 ;
-(void)handleNativeCommand:(id)arg0 parameters:(id)arg1 ;
-(void)handleJSCommand:(id)arg0 ;
-(void)commandShouldUseCustomClose:(NSInteger)arg0 ;
-(void)commandClose;
-(void)commandOpenURL:(id)arg0 ;
-(void)commandSetOrientationPropertiesWithForceOrientation:(NSUInteger)arg0 ;
-(void)commandTPATEvent:(id)arg0 ;
-(void)commandConsentAction:(id)arg0 ;
-(void)commandUIAction:(id)arg0 ;
-(void)commandUIAction:(id)arg0 withValue:(id)arg1 ;
-(void)commandSuccessfulView;
-(void)commandError:(id)arg0 ;
-(void)commandPrepareStoreView:(id)arg0 ;
-(void)commandPresentStoreView;
-(void)commandExpandWith:(id)arg0 ;
-(void)commandResizeWith:(id)arg0 ;


@end


#endif