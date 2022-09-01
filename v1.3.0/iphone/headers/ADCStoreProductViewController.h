// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCSTOREPRODUCTVIEWCONTROLLER_H
#define ADCSTOREPRODUCTVIEWCONTROLLER_H


#import <StoreKit/StoreKit.h>


@interface ADCStoreProductViewController : SKStoreProductViewController {
    NSUInteger supportedOrientationsOverride;
}




-(id)initWithSupportedOrientations:(NSUInteger)arg0 ;
-(BOOL)shouldAutorotate;
-(NSUInteger)supportedInterfaceOrientations;


@end


#endif