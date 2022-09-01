// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HTTPREQUESTWRAPPER_H
#define HTTPREQUESTWRAPPER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSObject;
@protocol NSObject;

@interface HTTPRequestWrapper : NSObject {
    id<NSObject> *_delegate;
    SEL _selector;
    SEL _redirectSel;
    NSURLConnection *_connection;
    NSUInteger _dataEncoding;
    NSMutableData *_data;
    id<NSObject> *_ctx;
}




-(id)initWithURL:(id)arg0 context:(id)arg1 delegate:(id)arg2 selector:(SEL)arg3 redirectSelector:(SEL)arg4 ;
-(id)initWithURL:(id)arg0 context:(id)arg1 delegate:(id)arg2 selector:(SEL)arg3 ;
-(void)clean;
-(void)cancel;
-(void)connectionDidFinishLoading:(id)arg0 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;
-(id)connection:(id)arg0 willSendRequest:(id)arg1 redirectResponse:(id)arg2 ;
-(void)dealloc;
+(id)wrapperWithURL:(id)arg0 context:(id)arg1 delegate:(id)arg2 selector:(SEL)arg3 ;


@end


#endif