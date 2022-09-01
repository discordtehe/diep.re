// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_RNDECRYPTOR_H
#define TR_RNDECRYPTOR_H

@class RNCryptor;

#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>


@interface TR_RNDecryptor : RNCryptor {
    ? _HMACContext;
    NSMutableData *__inData;
}


@property (readonly, nonatomic) NSMutableData *inData;
@property (copy, nonatomic) NSData *encryptionKey; // ivar: _encryptionKey
@property (copy, nonatomic) NSData *HMACKey; // ivar: _HMACKey
@property (copy, nonatomic) NSString *password; // ivar: _password
@property (nonatomic) BOOL hasV1HMAC; // ivar: _hasV1HMAC
@property (nonatomic) _RNCryptorSettings settings; // ivar: _settings


-(id)initWithEncryptionKey:(id)arg0 HMACKey:(id)arg1 handler:(id)arg2 ;
-(id)initWithPassword:(id)arg0 handler:(id)arg1 ;
-(void)decryptData:(id)arg0 ;
-(void)addData:(id)arg0 ;
-(BOOL)updateOptionsForPreamble:(id)arg0 ;
-(void)consumeHeaderFromData:(id)arg0 ;
-(void)finish;
+(id)decryptData:(id)arg0 withSettings:(struct _RNCryptorSettings )arg1 password:(id)arg2 error:(*id)arg3 ;
+(id)decryptData:(id)arg0 withSettings:(struct _RNCryptorSettings )arg1 encryptionKey:(id)arg2 HMACKey:(id)arg3 error:(*id)arg4 ;
+(id)decryptData:(id)arg0 withPassword:(id)arg1 error:(*id)arg2 ;
+(id)decryptData:(id)arg0 withEncryptionKey:(id)arg1 HMACKey:(id)arg2 error:(*id)arg3 ;


@end


#endif