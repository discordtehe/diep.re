// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_RNENCRYPTOR_H
#define TR_RNENCRYPTOR_H

@class RNCryptor;

#import <CoreFoundation/CoreFoundation.h>


@interface TR_RNEncryptor : RNCryptor {
    ? _HMACContext;
}


@property (retain, nonatomic) NSData *encryptionSalt; // ivar: _encryptionSalt
@property (retain, nonatomic) NSData *HMACSalt; // ivar: _HMACSalt
@property (retain, nonatomic) NSData *IV; // ivar: _IV
@property (nonatomic) BOOL haveWrittenHeader; // ivar: _haveWrittenHeader


-(id)initWithSettings:(struct _RNCryptorSettings )arg0 encryptionKey:(id)arg1 HMACKey:(id)arg2 handler:(id)arg3 ;
-(id)initWithSettings:(struct _RNCryptorSettings )arg0 encryptionKey:(id)arg1 HMACKey:(id)arg2 IV:(id)arg3 handler:(id)arg4 ;
-(id)initWithSettings:(struct _RNCryptorSettings )arg0 password:(id)arg1 handler:(id)arg2 ;
-(id)initWithSettings:(struct _RNCryptorSettings )arg0 password:(id)arg1 IV:(id)arg2 encryptionSalt:(id)arg3 HMACSalt:(id)arg4 handler:(id)arg5 ;
-(id)header;
-(void)addData:(id)arg0 ;
-(void)finish;
+(id)encryptData:(id)arg0 withSettings:(struct _RNCryptorSettings )arg1 password:(id)arg2 error:(*id)arg3 ;
+(id)encryptData:(id)arg0 withSettings:(struct _RNCryptorSettings )arg1 password:(id)arg2 IV:(id)arg3 encryptionSalt:(id)arg4 HMACSalt:(id)arg5 error:(*id)arg6 ;
+(id)encryptData:(id)arg0 withSettings:(struct _RNCryptorSettings )arg1 encryptionKey:(id)arg2 HMACKey:(id)arg3 error:(*id)arg4 ;
+(id)encryptData:(id)arg0 withSettings:(struct _RNCryptorSettings )arg1 encryptionKey:(id)arg2 HMACKey:(id)arg3 IV:(id)arg4 error:(*id)arg5 ;


@end


#endif