// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVER_H
#define ADCGCDWEBSERVER_H

@protocol OS_dispatch_queue, OS_dispatch_group, OS_dispatch_source;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ADCGCDWebServerDelegate;

@interface ADCGCDWebServer : NSObject {
    NSObject<OS_dispatch_queue> *_syncQueue;
    NSObject<OS_dispatch_group> *_sourceGroup;
    NSInteger _activeConnections;
    BOOL _connected;
    *__CFRunLoopTimer _disconnectTimer;
    NSDictionary *_options;
    Class _connectionClass;
    CGFloat _disconnectDelay;
    NSObject<OS_dispatch_source> *_source4;
    NSObject<OS_dispatch_source> *_source6;
    *__CFNetService _registrationService;
    *__CFNetService _resolutionService;
    *_DNSServiceRef_t _dnsService;
    *__CFSocket _dnsSocket;
    *__CFRunLoopSource _dnsSource;
    NSString *_dnsAddress;
    NSUInteger _dnsPort;
    BOOL _bindToLocalhost;
    BOOL _suspendInBackground;
    NSUInteger _backgroundTask;
}


@property (readonly, nonatomic) NSURL *serverURL;
@property (readonly, nonatomic) NSURL *bonjourServerURL;
@property (readonly, nonatomic) NSURL *publicServerURL;
@property (readonly, nonatomic) NSArray *handlers; // ivar: _handlers
@property (readonly, nonatomic) NSString *serverName; // ivar: _serverName
@property (readonly, nonatomic) NSString *authenticationRealm; // ivar: _authenticationRealm
@property (readonly, nonatomic) NSDictionary *authenticationBasicAccounts; // ivar: _authenticationBasicAccounts
@property (readonly, nonatomic) NSDictionary *authenticationDigestAccounts; // ivar: _authenticationDigestAccounts
@property (readonly, nonatomic) BOOL shouldAutomaticallyMapHEADToGET; // ivar: _mapHEADToGET
@property (nonatomic) NSObject<ADCGCDWebServerDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic, getter=isRunning) BOOL running;
@property (readonly, nonatomic) NSUInteger port; // ivar: _port
@property (readonly, nonatomic) NSString *bonjourName;
@property (readonly, nonatomic) NSString *bonjourType;


-(void)logVerbose:(id)arg0 ;
-(void)logInfo:(id)arg0 ;
-(void)logWarning:(id)arg0 ;
-(void)logError:(id)arg0 ;
-(void)logException:(id)arg0 ;
-(void)addGETHandlerForPath:(id)arg0 staticData:(id)arg1 contentType:(id)arg2 cacheAge:(NSUInteger)arg3 ;
-(void)addGETHandlerForPath:(id)arg0 filePath:(id)arg1 isAttachment:(BOOL)arg2 cacheAge:(NSUInteger)arg3 allowRangeRequests:(BOOL)arg4 ;
-(id)_responseWithContentsOfDirectory:(id)arg0 ;
-(void)addGETHandlerForBasePath:(id)arg0 directoryPath:(id)arg1 indexFilename:(id)arg2 cacheAge:(NSUInteger)arg3 allowRangeRequests:(BOOL)arg4 ;
-(void)addDefaultHandlerForMethod:(id)arg0 requestClass:(Class)arg1 processBlock:(id)arg2 ;
-(void)addDefaultHandlerForMethod:(id)arg0 requestClass:(Class)arg1 asyncProcessBlock:(id)arg2 ;
-(void)addHandlerForMethod:(id)arg0 path:(id)arg1 requestClass:(Class)arg2 processBlock:(id)arg3 ;
-(void)addHandlerForMethod:(id)arg0 path:(id)arg1 requestClass:(Class)arg2 asyncProcessBlock:(id)arg3 ;
-(void)addHandlerForMethod:(id)arg0 pathRegex:(id)arg1 requestClass:(Class)arg2 processBlock:(id)arg3 ;
-(void)addHandlerForMethod:(id)arg0 pathRegex:(id)arg1 requestClass:(Class)arg2 asyncProcessBlock:(id)arg3 ;
-(BOOL)start;
-(BOOL)startWithPort:(NSUInteger)arg0 bonjourName:(id)arg1 ;
-(id)init;
-(void)dealloc;
-(void)_startBackgroundTask;
-(void)_didConnect;
-(void)willStartConnection:(id)arg0 ;
-(void)_endBackgroundTask;
-(void)_didDisconnect;
-(void)didEndConnection:(id)arg0 ;
// -(void)addHandlerWithMatchBlock:(id)arg0 processBlock:(unk)arg1  ;
// -(void)addHandlerWithMatchBlock:(id)arg0 asyncProcessBlock:(unk)arg1  ;
-(void)removeAllHandlers;
-(int)_createListeningSocket:(BOOL)arg0 localAddress:(*void)arg1 length:(unsigned int)arg2 maxPendingConnections:(NSUInteger)arg3 error:(*id)arg4 ;
-(id)_createDispatchSourceWithListeningSocket:(int)arg0 isIPv6:(BOOL)arg1 ;
-(BOOL)_start:(*id)arg0 ;
-(void)_stop;
-(void)_didEnterBackground:(id)arg0 ;
-(void)_willEnterForeground:(id)arg0 ;
-(BOOL)startWithOptions:(id)arg0 error:(*id)arg1 ;
-(void)stop;
+(void)setLogLevel:(int)arg0 ;
+(void)initialize;


@end


#endif