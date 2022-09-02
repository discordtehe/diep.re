// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJREQUESTHANDLER_H
#define ADJREQUESTHANDLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ADJRequestHandler;
@protocol ADJLogger;
@protocol ADJPackageHandler;

@interface ADJRequestHandler : NSObject <ADJRequestHandler>



@property (retain, nonatomic) NSURL *baseUrl; // ivar: _baseUrl
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *internalQueue; // ivar: _internalQueue
@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger
@property (weak, nonatomic) NSObject<ADJPackageHandler> *packageHandler; // ivar: _packageHandler


-(id)initWithPackageHandler:(id)arg0 ;
-(void)sendPackage:(id)arg0 queueSize:(NSUInteger)arg1 ;
-(void)teardown;
-(void)sendI:(id)arg0 activityPackage:(id)arg1 queueSize:(NSUInteger)arg2 ;
+(id)handlerWithPackageHandler:(id)arg0 ;


@end


#endif