// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERCONNECTION_H
#define ADCGCDWEBSERVERCONNECTION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADCGCDWebServerRequest;
@class ADCGCDWebServerHandler;
@class ADCGCDWebServerResponse;
@class ADCGCDWebServer;

@interface ADCGCDWebServerConnection : NSObject {
    int _socket;
    BOOL _virtualHEAD;
    *__CFHTTPMessage _requestMessage;
    ADCGCDWebServerRequest *_request;
    ADCGCDWebServerHandler *_handler;
    *__CFHTTPMessage _responseMessage;
    ADCGCDWebServerResponse *_response;
    NSInteger _statusCode;
    BOOL _opened;
}


@property (readonly, nonatomic) ADCGCDWebServer *server; // ivar: _server
@property (readonly, nonatomic, getter=isUsingIPv6) BOOL usingIPv6;
@property (readonly, nonatomic) NSData *localAddressData; // ivar: _localAddress
@property (readonly, nonatomic) NSString *localAddressString;
@property (readonly, nonatomic) NSData *remoteAddressData; // ivar: _remoteAddress
@property (readonly, nonatomic) NSString *remoteAddressString;
@property (readonly, nonatomic) NSUInteger totalBytesRead; // ivar: _bytesRead
@property (readonly, nonatomic) NSUInteger totalBytesWritten; // ivar: _bytesWritten


-(BOOL)open;
-(void)didReadBytes:(*void)arg0 length:(NSUInteger)arg1 ;
-(void)didWriteBytes:(*void)arg0 length:(NSUInteger)arg1 ;
-(id)rewriteRequestURL:(id)arg0 withMethod:(id)arg1 headers:(id)arg2 ;
-(id)preflightRequest:(id)arg0 ;
-(void)processRequest:(id)arg0 completion:(id)arg1 ;
-(id)overrideResponse:(id)arg0 forRequest:(id)arg1 ;
-(void)abortRequest:(id)arg0 withStatusCode:(NSInteger)arg1 ;
-(void)close;
-(void)_writeData:(id)arg0 withCompletionBlock:(id)arg1 ;
-(void)_writeHeadersWithCompletionBlock:(id)arg0 ;
-(void)_writeBodyWithCompletionBlock:(id)arg0 ;
-(void)_readData:(id)arg0 withLength:(NSUInteger)arg1 completionBlock:(id)arg2 ;
-(void)_readHeaders:(id)arg0 withCompletionBlock:(id)arg1 ;
-(void)_readBodyWithRemainingLength:(NSUInteger)arg0 completionBlock:(id)arg1 ;
-(void)_readNextBodyChunk:(id)arg0 completionBlock:(id)arg1 ;
-(void)_initializeResponseHeadersWithStatusCode:(NSInteger)arg0 ;
-(void)_startProcessingRequest;
-(void)_finishProcessingRequest:(id)arg0 ;
-(void)_readBodyWithLength:(NSUInteger)arg0 initialData:(id)arg1 ;
-(void)_readChunkedBodyWithInitialData:(id)arg0 ;
-(void)_readRequestHeaders;
-(id)initWithServer:(id)arg0 localAddress:(id)arg1 remoteAddress:(id)arg2 socket:(int)arg3 ;
-(void)dealloc;
+(void)initialize;


@end


#endif