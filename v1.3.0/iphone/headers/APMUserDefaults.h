// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMUSERDEFAULTS_H
#define APMUSERDEFAULTS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface APMUserDefaults : NSObject {
    NSString *_suiteName;
    *__CFString _appNameRef;
    NSUserDefaults *_userDefaults;
}


@property BOOL isPreferenceFileExcluded; // ivar: _isPreferenceFileExcluded
@property (nonatomic) BOOL useCFPreferencesLibrary; // ivar: _useCFPreferencesLibrary


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
-(void)clearAllData;
-(void)synchronize;
-(void)scheduleSynchronize;
+(BOOL)userPreferenceEnabled;
+(id)standardUserDefaults;


@end


#endif