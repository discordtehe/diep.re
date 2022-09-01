// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_RNCRYPTORENGINE_H
#define TR_RNCRYPTORENGINE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TR_RNCryptorEngine : NSObject

@property (readonly, nonatomic) *_CCCryptor cryptor; // ivar: __cryptor
@property (readonly, nonatomic) NSMutableData *buffer; // ivar: __buffer


-(id)initWithOperation:(unsigned int)arg0 settings:(struct _RNCryptorSettings )arg1 key:(id)arg2 IV:(id)arg3 error:(*id)arg4 ;
-(void)dealloc;
-(id)addData:(id)arg0 error:(*id)arg1 ;
-(id)finishWithError:(*id)arg0 ;


@end


#endif