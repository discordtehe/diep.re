// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGSTOREKITPRODUCTVIEWPROVIDER_H
#define VNGSTOREKITPRODUCTVIEWPROVIDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol SKStoreProductViewControllerDelegate;
@protocol VNGStoreKitProductViewProviderDelegate;

@interface VNGStoreKitProductViewProvider : NSObject <SKStoreProductViewControllerDelegate>



@property (retain, nonatomic) NSMutableArray *preloadedProductViewQueue; // ivar: _preloadedProductViewQueue
@property (retain, nonatomic) NSDictionary *appStoreParams; // ivar: _appStoreParams
@property (nonatomic) NSInteger activeLoadingCount; // ivar: _activeLoadingCount
@property unsigned char isReady; // ivar: _isReady
@property (readonly, nonatomic) NSInteger numberOfPreloadedProductView; // ivar: _numberOfPreloadedProductView
@property (weak, nonatomic) NSObject<VNGStoreKitProductViewProviderDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initProductViewProviderWithWithAppStoreParams:(id)arg0 ;
-(id)initProductViewProviderWithWithAppStoreParams:(id)arg0 numberOfPreloadedProductView:(NSInteger)arg1 ;
-(id)getProductViewController;
-(void)loadNewProductViewToQueueWithNumber:(NSInteger)arg0 ;
-(void)productViewControllerDidFinish:(id)arg0 ;
+(id)numberFromAppStoreID:(id)arg0 error:(*id)arg1 ;


@end


#endif