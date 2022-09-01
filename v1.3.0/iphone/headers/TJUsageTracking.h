// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJUSAGETRACKING_H
#define TJUSAGETRACKING_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TJUsageTracking : NSObject

@property (nonatomic) NSInteger startTime; // ivar: _startTime
@property (nonatomic) NSInteger firstTime; // ivar: _firstTime
@property (nonatomic) NSInteger lastTime; // ivar: _lastTime
@property (retain, nonatomic) NSMutableDictionary *usageData; // ivar: _usageData
@property (nonatomic) BOOL enabled; // ivar: _enabled
@property (retain, nonatomic) NSArray *excludedUsageNames; // ivar: _excludedUsageNames


-(id)init;
-(void)enable;
-(void)disable;
-(void)checkReport:(id)arg0 ;
-(void)syncTimes;
-(void)track:(id)arg0 time:(NSInteger)arg1 dimensions:(id)arg2 values:(id)arg3 ;
-(void)report;
-(id)statForName:(id)arg0 dimensions:(id)arg1 time:(CGFloat)arg2 ;
-(void)storeStat:(id)arg0 ;
+(id)filenameForName:(id)arg0 dimensions:(id)arg1 ;
+(id)dimensionsToString:(id)arg0 ;
+(id)dirPath;
+(id)metaData;
+(void)setMetaDataObject:(id)arg0 forKey:(id)arg1 ;
+(void)clearMetaData;
+(id)sharedInstance;
+(void)enable;
+(void)disable;
+(void)checkReport;
+(void)track:(id)arg0 dimensions:(id)arg1 values:(id)arg2 ;
+(id)newUsage:(id)arg0 ;
+(id)startUsage:(id)arg0 ;
+(NSInteger)unitTest_getDurationMillis;


@end


#endif