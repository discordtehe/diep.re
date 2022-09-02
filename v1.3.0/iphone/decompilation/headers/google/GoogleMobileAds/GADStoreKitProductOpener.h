// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSTOREKITPRODUCTOPENER_H
#define GADSTOREKITPRODUCTOPENER_H


#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>

@class GADViewControllerPresenter;
@protocol SKStoreProductViewControllerDelegate;

@interface GADStoreKitProductOpener : NSObject <SKStoreProductViewControllerDelegate>

 {
    SKStoreProductViewController *_weakStoreKitProductViewController;
    GADViewControllerPresenter *_presenter;
    BOOL _shouldDismissAfterPresentation;
    BOOL _isPresenting;
    BOOL _isPresented;
    BOOL _dismissed;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithStoreKitProductViewController:(id)arg0 context:(id)arg1 ;
-(void)openWithRootViewController:(id)arg0 completionBlock:(id)arg1 ;
-(void)dismiss;
-(void)productViewControllerDidFinish:(id)arg0 ;


@end


#endif