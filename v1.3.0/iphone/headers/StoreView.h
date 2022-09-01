// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef STOREVIEW_H
#define STOREVIEW_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MCStoreProductViewController;
@protocol SKStoreProductViewControllerDelegate;

@interface StoreView : NSObject <SKStoreProductViewControllerDelegate>

 {
    BOOL mStoreViewControllerSupported;
    MCStoreProductViewController *mStoreController;
    id *mAlertView;
    BOOL mIsShowing;
}


@property (retain, nonatomic) NSString *pleaseWaitMessageText; // ivar: mPleaseWaitMessageText
@property (retain, nonatomic) NSString *errorMessageTitle; // ivar: mErrorMessageTitle
@property (retain, nonatomic) NSString *errorMessageText; // ivar: mErrorMessageText
@property (retain, nonatomic) NSString *errorMessageButtonText; // ivar: mErrorMessageButtonText
@property (retain, nonatomic) UIViewController *viewController; // ivar: mViewController
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)clean;
-(void)productViewControllerDidFinish:(id)arg0 ;
-(void)showForAppId:(id)arg0 ;
-(void)showForAppId:(id)arg0 preferredOrientation:(int)arg1 ;
-(BOOL)isShowing;
-(void)dismiss:(BOOL)arg0 ;
-(void)dismiss;
-(void)dismissImmediately;
+(id)sharedStoreView;
+(BOOL)isStoreViewInitialized;
+(void)releaseSharedStoreView;


@end


#endif