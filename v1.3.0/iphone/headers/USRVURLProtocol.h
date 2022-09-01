// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVURLPROTOCOL_H
#define USRVURLPROTOCOL_H


#import <Foundation/Foundation.h>


@interface USRVURLProtocol : NSURLProtocol



-(void)startLoading;
-(void)stopLoading;
+(BOOL)canInitWithRequest:(id)arg0 ;
+(id)canonicalRequestForRequest:(id)arg0 ;


@end


#endif