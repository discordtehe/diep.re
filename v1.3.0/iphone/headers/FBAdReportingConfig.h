// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADREPORTINGCONFIG_H
#define FBADREPORTINGCONFIG_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdReportingConfig : NSObject

@property (readonly, nonatomic) NSURL *adConfigFileURL; // ivar: _adConfigFileURL
@property (copy) NSDictionary *adReportingConfig; // ivar: _adReportingConfig
@property (readonly, nonatomic) NSArray *reportingItems;
@property (readonly, nonatomic) NSArray *hidingItems;
@property (readonly, nonatomic) NSURL *manageAdPreferencesURL;
@property (readonly, nonatomic) NSURL *adChoicesURL;
@property (readonly, nonatomic) NSDate *lastUpdateTime;


-(id)manageAdPreferencesURLFromDict:(id)arg0 ;
-(id)adChoicesURLFromDict:(id)arg0 ;
-(id)localisedStringForKey:(id)arg0 orDefault:(id)arg1 ;
-(id)loadFromDict:(id)arg0 error:(*id)arg1 ;
-(id)save;
-(id)deleteConfig;
-(BOOL)isLoaded;
-(BOOL)isReadyForFullscreen;
-(BOOL)isReadyForNonFullscreen;
-(id)init;
-(id)initWithAsyncLoad:(BOOL)arg0 ;
-(id)objectForKeyedSubscript:(id)arg0 ;
-(void)setObject:(id)arg0 forKeyedSubscript:(id)arg1 ;
-(id)reportingItemsFromDict:(id)arg0 ;
-(id)hidingItemsFromDict:(id)arg0 ;
-(BOOL)validateConfigDict:(id)arg0 ;
-(id)extractItemsFromArray:(id)arg0 ;
-(id)loadConfigFromPlist:(id)arg0 ;
-(id)loadFromDiskAsync:(BOOL)arg0 ;
-(id)saveAsync:(BOOL)arg0 ;
+(id)sharedConfig;
+(id)sharedConfigAsync:(BOOL)arg0 ;


@end


#endif