// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_RNCRYPTOR_H
#define TR_RNCRYPTOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TR_RNCryptorEngine;

@interface TR_RNCryptor : NSObject

@property (retain, nonatomic) TR_RNCryptorEngine *engine; // ivar: _engine
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (readonly, nonatomic) NSMutableData *outData; // ivar: __outData
@property (copy, nonatomic) id *handler; // ivar: _handler
@property (nonatomic) NSUInteger HMACLength; // ivar: __HMACLength
@property (retain, nonatomic) NSError *error; // ivar: _error
@property (nonatomic, getter=isFinished) BOOL finished; // ivar: _finished
@property (nonatomic) unsigned char options; // ivar: _options
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *responseQueue; // ivar: _responseQueue


-(id)initWithHandler:(id)arg0 ;
-(void)dealloc;
-(void)addData:(id)arg0 ;
-(void)finish;
-(void)cleanupAndNotifyWithError:(id)arg0 ;
-(BOOL)hasHMAC;
+(id)synchronousResultForCryptor:(id)arg0 data:(id)arg1 error:(*id)arg2 ;
+(id)keyForPassword:(id)arg0 salt:(id)arg1 settings:(struct _RNCryptorKeyDerivationSettings )arg2 ;
+(id)randomDataOfLength:(NSUInteger)arg0 ;


@end


#endif