// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMINAPPPURCHASEPRODUCTCACHE_H
#define APMINAPPPURCHASEPRODUCTCACHE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface APMInAppPurchaseProductCache : NSObject {
    NSMutableSet *_invalidProductIdentifiers;
    NSMutableDictionary *_validProducts;
    NSObject<OS_dispatch_queue> *_lockQueue;
}




-(id)init;
-(id)cachedProductForProductIdentifier:(id)arg0 ;
-(void)requestProductsWithProductIdentifiers:(id)arg0 queue:(id)arg1 completionHandler:(id)arg2 ;
+(id)sharedInstance;


@end


#endif