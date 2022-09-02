// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJKEYCHAIN_H
#define ADJKEYCHAIN_H


#import <Foundation/Foundation.h>


@interface ADJKeychain : NSObject



-(id)init;
-(BOOL)setValue:(id)arg0 forKeychainKey:(id)arg1 inService:(id)arg2 ;
-(id)valueForKeychainKeyNew:(id)arg0 service:(id)arg1 ;
-(id)valueForKeychainKeyOld:(id)arg0 service:(id)arg1 ;
-(id)valueForKeychainItem:(id)arg0 key:(id)arg1 service:(id)arg2 ;
-(id)keychainItemForKeyNew:(id)arg0 service:(id)arg1 ;
-(id)keychainItemForKeyOld:(id)arg0 service:(id)arg1 ;
-(void)keychainItemForKey:(id)arg0 key:(id)arg1 service:(id)arg2 ;
-(int)setValueWithStatus:(id)arg0 forKeychainKey:(id)arg1 inService:(id)arg2 ;
-(BOOL)wasWritingSuccessful:(id)arg0 forKeychainKey:(id)arg1 inService:(id)arg2 ;
+(id)getInstance;
+(BOOL)setValue:(id)arg0 forKeychainKey:(id)arg1 inService:(id)arg2 ;
+(id)valueForKeychainKeyOld:(id)arg0 service:(id)arg1 ;
+(id)valueForKeychainKeyNew:(id)arg0 service:(id)arg1 ;


@end


#endif