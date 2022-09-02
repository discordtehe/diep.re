// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOSTORECHANGE_H
#define MCPROMOSTORECHANGE_H


#import <Foundation/Foundation.h>


@interface MCPromoStoreChange : NSObject

@property (readonly, nonatomic) NSString *productToActivate; // ivar: mProductToActivate
@property (readonly, nonatomic) NSString *productToDeactivate; // ivar: mProductToDeactivate
@property (readonly, nonatomic) NSString *replacementProductToActivate; // ivar: mReplacementProductToActivate
@property (readonly, nonatomic) NSString *replacementProductToDeactivate; // ivar: mReplacementProductToDeactivate


-(id)init;
-(id)initWithConfiguration:(id)arg0 ;
-(void)dealloc;
+(id)getStoreChangeFromConfiguration:(id)arg0 ;


@end


#endif