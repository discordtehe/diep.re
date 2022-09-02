// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCTEXTVIEWAPI_H
#define ADCTEXTVIEWAPI_H


#import <Foundation/Foundation.h>


@interface ADCTextViewAPI : NSObject



+(BOOL)createWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setBoundsWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setVisibleWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setTextWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)getTextWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setTypefaceWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setFontSizeWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setFontColorWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setBackgroundColorWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setEditableWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)destroyWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;


@end


#endif