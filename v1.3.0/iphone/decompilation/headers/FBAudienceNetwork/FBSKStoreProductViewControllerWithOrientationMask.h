// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBSKSTOREPRODUCTVIEWCONTROLLERWITHORIENTATIONMASK_H
#define FBSKSTOREPRODUCTVIEWCONTROLLERWITHORIENTATIONMASK_H


#import <StoreKit/StoreKit.h>


@interface FBSKStoreProductViewControllerWithOrientationMask : SKStoreProductViewController

@property (nonatomic) NSUInteger orientationMask; // ivar: _orientationMask


-(id)initWithOrientationMask:(NSUInteger)arg0 ;
-(NSUInteger)supportedInterfaceOrientations;
-(BOOL)shouldAutorotate;
-(BOOL)prefersStatusBarHidden;


@end


#endif