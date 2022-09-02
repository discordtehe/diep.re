// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVWEBVIEWCALLBACK_H
#define USRVWEBVIEWCALLBACK_H


#import <Foundation/Foundation.h>


@interface USRVWebViewCallback : NSObject

@property (nonatomic) NSString *callbackId; // ivar: _callbackId
@property (nonatomic) int invocationId; // ivar: _invocationId
@property (nonatomic) BOOL invoked; // ivar: _invoked


-(id)initWithCallbackId:(id)arg0 invocationId:(int)arg1 ;
-(void)invokeWithStatus:(id)arg0 error:(id)arg1 params:(id)arg2 ;
-(void)invoke:(id)arg0 ;
-(void)error:(id)arg0 arg1:(id)arg1 ;


@end


#endif