// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABNETWORKOPERATION_H
#define FABNETWORKOPERATION_H


#import <Foundation/Foundation.h>

@class FABAsyncOperation;

@interface FABNetworkOperation : FABAsyncOperation

@property (readonly, nonatomic) NSString *APIKey; // ivar: _APIKey


-(id)initWithAPIKey:(id)arg0 ;
-(id)mutableRequestWithDefaultHTTPHeaderFieldsAndTimeoutForURL:(id)arg0 ;
-(id)mutableRequestWithDefaultHTTPHeadersForURL:(id)arg0 timeout:(CGFloat)arg1 ;
-(id)userAgentString;
-(id)localeIdentifier;


@end


#endif