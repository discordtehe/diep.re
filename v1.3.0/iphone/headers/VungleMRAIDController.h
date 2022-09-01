// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEMRAIDCONTROLLER_H
#define VUNGLEMRAIDCONTROLLER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class VungleMRAIDAd;
@class VunglePlacement;
@class VungleMRAIDBridge;
@class VungleAdContainerView;
@class VungleMRAIDViewProperties;
@class VungleWebViewFacade;
@protocol VungleMRAIDBridgeDelegate;
@protocol VungleMRAIDReportBuilderProtocol;
@protocol VungleMRAIDControllerDelegate;

@interface VungleMRAIDController : NSObject <VungleMRAIDBridgeDelegate>



@property (nonatomic) BOOL isAdLoading; // ivar: _isAdLoading
@property (retain, nonatomic) VungleMRAIDAd *ad; // ivar: _ad
@property (retain, nonatomic) VunglePlacement *placement; // ivar: _placement
@property (retain, nonatomic) VungleMRAIDBridge *MRAIDbridge; // ivar: _MRAIDbridge
@property (retain, nonatomic) VungleAdContainerView *adContainerView; // ivar: _adContainerView
@property (nonatomic) BOOL didFinishDisplayingAd; // ivar: _didFinishDisplayingAd
@property (retain, nonatomic) NSObject<VungleMRAIDReportBuilderProtocol> *reportBuilder; // ivar: _reportBuilder
@property (retain, nonatomic) VungleMRAIDViewProperties *mraidViewProperties; // ivar: _mraidViewProperties
@property (nonatomic) BOOL isSuccessfulAdView; // ivar: _isSuccessfulAdView
@property (nonatomic) BOOL isStoreKitWorkaround; // ivar: _isStoreKitWorkaround
@property (nonatomic) BOOL isStoreViewLoaded; // ivar: _isStoreViewLoaded
@property (nonatomic) BOOL shouldProcessCloseEvent; // ivar: _shouldProcessCloseEvent
@property (weak, nonatomic) NSObject<VungleMRAIDControllerDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) UIViewController *presenterViewController; // ivar: _presenterViewController
@property (retain, nonatomic) VungleWebViewFacade *webViewFacade; // ivar: _webViewFacade
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithMRAIDPlacement:(id)arg0 adFrame:(struct CGRect )arg1 ;
-(void)loadAdWithPlayOptions:(id)arg0 ;
-(void)orientationPropertyChangeWithNewSize:(struct CGSize )arg0 ;
-(void)viewablePropertyChange:(BOOL)arg0 ;
-(void)calculateAdDurationForNativeClose;
-(void)injectCloseEvent:(BOOL)arg0 ;
-(void)finalizeAdExperience;
-(void)reactToApplicationEnteringBackground:(id)arg0 ;
-(void)unsubscribeFromEnteringBackgroundEvents;
-(id)ctaButtonURL;
-(void)dealloc;
-(void)MRAIDBridge:(id)arg0 didFailToLoad:(id)arg1 ;
-(void)MRAIDBridgeDidLoadAd:(id)arg0 ;
-(void)handleNativeCommandCloseWithBridge:(id)arg0 ;
-(void)bridge:(id)arg0 handleDisplayForDestinationURL:(id)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandUseCustomClose:(NSInteger)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandSetOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg1 ;
-(void)handleNativeCommandCriticalErrorWithBridge:(id)arg0 ;
-(void)bridge:(id)arg0 handleNativeCommandTPATKey:(id)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandIsSuccessfulView:(BOOL)arg1 ;
-(void)handleNativePrepareStoreView:(id)arg0 ;
-(void)handleNativePresentStoreView;
-(void)bridge:(id)arg0 handleExpandCommand:(id)arg1 ;
-(void)bridge:(id)arg0 handleResizeCommand:(id)arg1 ;
-(BOOL)urlContainsStoreKitAppID:(id)arg0 ;


@end


#endif