// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULUSERDEFAULTS_H
#define GULUSERDEFAULTS_H


#import <Foundation/Foundation.h>


@interface GULUserDefaults : NSObject

@property (readonly) *__CFString appNameRef; // ivar: _appNameRef
@property BOOL isPreferenceFileExcluded; // ivar: _isPreferenceFileExcluded


-(id)init;
-(id)initWithSuiteName:(id)arg0 ;
-(void)dealloc;
-(id)objectForKey:(id)arg0 ;
-(void)setObject:(id)arg0 forKey:(id)arg1 ;
-(void)removeObjectForKey:(id)arg0 ;
-(NSInteger)integerForKey:(id)arg0 ;
-(float)floatForKey:(id)arg0 ;
-(CGFloat)doubleForKey:(id)arg0 ;
-(BOOL)boolForKey:(id)arg0 ;
-(id)stringForKey:(id)arg0 ;
-(id)arrayForKey:(id)arg0 ;
-(id)dictionaryForKey:(id)arg0 ;
-(void)setInteger:(NSInteger)arg0 forKey:(id)arg1 ;
-(void)setFloat:(float)arg0 forKey:(id)arg1 ;
-(void)setDouble:(CGFloat)arg0 forKey:(id)arg1 ;
-(void)setBool:(BOOL)arg0 forKey:(id)arg1 ;
-(void)synchronize;
-(void)clearAllData;
-(void)scheduleSynchronize;
+(id)standardUserDefaults;


@end


#endif