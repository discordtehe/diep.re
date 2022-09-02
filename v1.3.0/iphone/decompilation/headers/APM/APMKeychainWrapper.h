// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMKEYCHAINWRAPPER_H
#define APMKEYCHAINWRAPPER_H


#import <Foundation/Foundation.h>


@interface APMKeychainWrapper : NSObject



+(BOOL)upsertKeychainValue:(id)arg0 withIdentifier:(id)arg1 appID:(id)arg2 ;
+(id)keychainValueWithIdentifier:(id)arg0 appID:(id)arg1 ;
+(void)deleteKeychainValueWithIdentifier:(id)arg0 appID:(id)arg1 ;
+(id)searchDirectoryForIdentifier:(id)arg0 withAppID:(id)arg1 ;
+(id)keychainDataWithIdentifier:(id)arg0 appID:(id)arg1 ;


@end


#endif