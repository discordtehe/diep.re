// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVWEBVIEWMETHODINVOKEOPERATION_H
#define USRVWEBVIEWMETHODINVOKEOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface USRVWebViewMethodInvokeOperation : NSOperation

@property (retain, nonatomic) NSString *webViewMethod; // ivar: _webViewMethod
@property (retain, nonatomic) NSString *webViewClass; // ivar: _webViewClass
@property (retain, nonatomic) NSArray *parameters; // ivar: _parameters
@property (nonatomic) int waitTime; // ivar: _waitTime
@property (nonatomic) BOOL success; // ivar: _success


-(id)initWithMethod:(id)arg0 webViewClass:(id)arg1 parameters:(id)arg2 waitTime:(int)arg3 ;
-(void)main;
+(void)callback:(id)arg0 ;


@end


#endif