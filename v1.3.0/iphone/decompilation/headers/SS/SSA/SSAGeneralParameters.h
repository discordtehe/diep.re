// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSAGENERALPARAMETERS_H
#define SSAGENERALPARAMETERS_H


#import <CoreFoundation/CoreFoundation.h>

@class SSAProductParameters;

@interface SSAGeneralParameters : SSAProductParameters

@property (retain, nonatomic) NSMutableDictionary *additionalParameters; // ivar: _additionalParameters
@property (weak, nonatomic) id *delegate; // ivar: _delegate


-(id)initWithAppKey:(id)arg0 userId:(id)arg1 delegate:(id)arg2 parames:(id)arg3 ;


@end


#endif