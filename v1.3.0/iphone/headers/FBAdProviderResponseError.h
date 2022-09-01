// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPROVIDERRESPONSEERROR_H
#define FBADPROVIDERRESPONSEERROR_H


#import <Foundation/Foundation.h>

@class FBAdProviderResponse;
@class FBAdPlacementDefinition;

@interface FBAdProviderResponseError : FBAdProviderResponse

@property (copy, nonatomic) NSString *errorMessage; // ivar: _errorMessage
@property (nonatomic) NSInteger errorCode; // ivar: _errorCode
@property (retain, nonatomic) FBAdPlacementDefinition *adPlacementDefinition; // ivar: _adPlacementDefinition


-(id)initWithErrorMessage:(id)arg0 withErrorCode:(NSInteger)arg1 withPlacementDefinition:(id)arg2 ;


@end


#endif