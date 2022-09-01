// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMPRODUCTSREQUEST_H
#define APMPRODUCTSREQUEST_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>

@protocol SKProductsRequestDelegate;

@interface APMProductsRequest : NSObject <SKProductsRequestDelegate>

 {
    SKProductsRequest *_productsRequest;
    id *_completionHandler;
    NSObject<OS_dispatch_queue> *_queue;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithProductIdentifiers:(id)arg0 ;
-(void)requestWithQueue:(id)arg0 completionHandler:(id)arg1 ;
-(void)productsRequest:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)request:(id)arg0 didFailWithError:(id)arg1 ;
-(void)clearInstance;
+(void)requestProductsWithProductIdentifiers:(id)arg0 queue:(id)arg1 completionHandler:(id)arg2 ;


@end


#endif