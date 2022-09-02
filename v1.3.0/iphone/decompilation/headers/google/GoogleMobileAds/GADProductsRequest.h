// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADPRODUCTSREQUEST_H
#define GADPRODUCTSREQUEST_H


#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>

@class GADProductsRequest;
@protocol SKProductsRequestDelegate;

@interface GADProductsRequest : NSObject <SKProductsRequestDelegate>

 {
    SKProductsRequest *_request;
    id *_completionHandler;
    GADProductsRequest *_retainCycle;
    atomic_flag _hasCompleted;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)startWithProductIdentifiers:(id)arg0 completionHandler:(id)arg1 ;
-(void)completedWithValidProducts:(id)arg0 invalidProductIDs:(id)arg1 error:(id)arg2 ;
-(void)productsRequest:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)request:(id)arg0 didFailWithError:(id)arg1 ;


@end


#endif