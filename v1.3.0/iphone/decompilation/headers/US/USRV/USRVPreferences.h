// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVPREFERENCES_H
#define USRVPREFERENCES_H


#import <Foundation/Foundation.h>


@interface USRVPreferences : NSObject



+(BOOL)hasKey:(id)arg0 ;
+(id)getString:(id)arg0 ;
+(id)getInteger:(id)arg0 ;
+(id)getLong:(id)arg0 ;
+(id)getBoolean:(id)arg0 ;
+(id)getFloat:(id)arg0 ;
+(void)setString:(id)arg0 forKey:(id)arg1 ;
+(void)setInteger:(int)arg0 forKey:(id)arg1 ;
+(void)setFloat:(float)arg0 forKey:(id)arg1 ;
+(void)setBoolean:(BOOL)arg0 forKey:(id)arg1 ;
+(void)setLong:(NSInteger)arg0 forKey:(id)arg1 ;
+(void)removeKey:(id)arg0 ;


@end


#endif