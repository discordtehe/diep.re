// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSTOREKITPRODUCTINLINERENDERER_H
#define GADSTOREKITPRODUCTINLINERENDERER_H


#import <Foundation/Foundation.h>

@class GADStoreKitProductViewController;
@protocol SKStoreProductViewControllerDelegate;

@interface GADStoreKitProductInlineRenderer : NSObject <SKStoreProductViewControllerDelegate>

 {
    GADStoreKitProductViewController *_storeKitProductViewController;
    BOOL _renderedInline;
    id *_dismissNotificationBlock;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithStoreKitProductViewController:(id)arg0 ;
-(void)renderInView:(id)arg0 dismissalCompletionBlock:(id)arg1 ;
-(void)resizeToFrame:(struct CGRect )arg0 ;
-(void)dismiss;
-(void)productViewControllerDidFinish:(id)arg0 ;


@end


#endif