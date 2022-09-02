// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDJSNETWORKBRIDGE_H
#define GADOMIDJSNETWORKBRIDGE_H


#import <Foundation/Foundation.h>

@protocol GADOMIDJSInvoker;

@interface GADOMIDJSNetworkBridge : NSObject

@property (weak, nonatomic) NSObject<GADOMIDJSInvoker> *jsInvoker; // ivar: _jsInvoker


-(void)setupMethodsForJSObject:(id)arg0 ;
-(void)downloadJavaScriptResourceWithURL:(id)arg0 successCallback:(id)arg1 failureCallback:(id)arg2 ;
-(void)sendURL:(id)arg0 successCallback:(id)arg1 failureCallback:(id)arg2 ;
-(void)injectJavaScriptFromURL:(id)arg0 ;
-(NSUInteger)getGADOMIDError:(id)arg0 ;


@end


#endif