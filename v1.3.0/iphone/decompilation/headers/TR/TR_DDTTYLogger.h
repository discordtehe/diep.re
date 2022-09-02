// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDTTYLOGGER_H
#define TR_DDTTYLOGGER_H

@class DDAbstractLogger;
@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol DDLogger;
@protocol DDLogFormatter;

@interface TR_DDTTYLogger : DDAbstractLogger <DDLogger>

 {
    NSUInteger _calendarUnitFlags;
    NSString *_appName;
    char * _app;
    NSUInteger _appLen;
    NSString *_processID;
    char * _pid;
    NSUInteger _pidLen;
    BOOL _colorsEnabled;
    NSMutableArray *_colorProfilesArray;
    NSMutableDictionary *_colorProfilesDict;
}


@property BOOL colorsEnabled;
@property (nonatomic) BOOL automaticallyAppendNewlineForCustomFormatters; // ivar: _automaticallyAppendNewlineForCustomFormatters
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) NSObject<DDLogFormatter> *logFormatter;
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *loggerQueue;
@property (readonly, nonatomic) NSString *loggerName;


-(id)init;
-(void)loadDefaultColorProfiles;
-(void)setForegroundColor:(struct UIColor *)arg0 backgroundColor:(struct UIColor *)arg1 forFlag:(NSUInteger)arg2 ;
-(void)setForegroundColor:(struct UIColor *)arg0 backgroundColor:(struct UIColor *)arg1 forFlag:(NSUInteger)arg2 context:(NSInteger)arg3 ;
-(void)setForegroundColor:(struct UIColor *)arg0 backgroundColor:(struct UIColor *)arg1 forTag:(id)arg2 ;
-(void)clearColorsForFlag:(NSUInteger)arg0 ;
-(void)clearColorsForFlag:(NSUInteger)arg0 context:(NSInteger)arg1 ;
-(void)clearColorsForTag:(id)arg0 ;
-(void)clearColorsForAllFlags;
-(void)clearColorsForAllTags;
-(void)clearAllColors;
-(void)logMessage:(id)arg0 ;
+(void)initialize_colors_16;
+(void)initialize_colors_256;
+(void)getRed:(*CGFloat)arg0 green:(*CGFloat)arg1 blue:(*CGFloat)arg2 fromColor:(struct UIColor *)arg3 ;
+(NSUInteger)codeIndexForColor:(struct UIColor *)arg0 ;
+(id)sharedInstance;


@end


#endif