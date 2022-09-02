// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_EXTERNALAVIDADSESSIONCONTEXT_H
#define ADCOLONY_EXTERNALAVIDADSESSIONCONTEXT_H


#import <Foundation/Foundation.h>


@interface AdColony_ExternalAvidAdSessionContext : NSObject

@property (readonly, nonatomic) NSString *partnerVersion; // ivar: _partnerVersion
@property (readonly, nonatomic) BOOL isDeferred; // ivar: _isDeferred


-(id)initWithPartnerVersion:(id)arg0 ;
-(id)initWithPartnerVersion:(id)arg0 isDeferred:(BOOL)arg1 ;
+(id)contextWithPartnerVersion:(id)arg0 ;
+(id)contextWithPartnerVersion:(id)arg0 isDeferred:(BOOL)arg1 ;


@end


#endif