// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USTRPRODUCTREQUEST_H
#define USTRPRODUCTREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <StoreKit/StoreKit.h>

@protocol SKProductsRequestDelegate;

@interface USTRProductRequest : NSObject <SKProductsRequestDelegate>



@property (retain, nonatomic) NSArray *productIds; // ivar: _productIds
@property (retain, nonatomic) SKProductsRequest *currentRequest; // ivar: _currentRequest
@property (retain, nonatomic) NSNumber *requestId; // ivar: _requestId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithProductIds:(id)arg0 requestId:(id)arg1 ;
-(void)requestProducts;
-(void)addToActiveRequests;
-(void)removeFromActiveRequests;
-(void)sendProducts:(id)arg0 invalidProducts:(id)arg1 ;
-(void)productsRequest:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)requestDidFinish:(id)arg0 ;
-(void)request:(id)arg0 didFailWithError:(id)arg1 ;


@end


#endif