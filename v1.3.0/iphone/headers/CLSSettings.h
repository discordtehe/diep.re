// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSSETTINGS_H
#define CLSSETTINGS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSSettings : NSObject

@property (readonly, nonatomic) NSDictionary *settingsDictionary; // ivar: _settingsDictionary
@property (readonly, copy, nonatomic) NSString *reportsEndpoint;
@property (readonly, copy, nonatomic) NSString *betaEndpoint;
@property (readonly, copy, nonatomic) NSNumber *betaSuspendDuration;
@property (readonly, nonatomic) BOOL shouldPackageReports;
@property (readonly, nonatomic) BOOL shouldSubmitReports;
@property (readonly, nonatomic) BOOL canProcessUrgentReports;
@property (readonly, nonatomic) BOOL errorReportingEnabled;
@property (readonly, nonatomic) BOOL customExceptionsEnabled;
@property (readonly, nonatomic) BOOL crashReportingEnabled;
@property (readonly, nonatomic) BOOL userPromptEnabled;
@property (readonly, nonatomic) BOOL firebaseCrashlyticsEnabled;
@property (readonly, nonatomic) unsigned int errorLogBufferSize;
@property (readonly, nonatomic) unsigned int logBufferSize;
@property (readonly, nonatomic) unsigned int maxCustomExceptions;
@property (readonly, nonatomic) unsigned int maxCustomKeys;
@property (readonly, copy, nonatomic) NSString *interactivePromptTitle;
@property (readonly, copy, nonatomic) NSString *interactivePromptMessage;
@property (readonly, copy, nonatomic) NSString *interactivePromptCancelTitle;
@property (readonly, copy, nonatomic) NSString *interactivePromptSendTitle;
@property (readonly, copy, nonatomic) NSString *interactivePromptAlwaysSendTitle;


-(id)initWithDictionary:(id)arg0 ;
-(id)configuration;
-(id)defaultConfiguration;
-(id)valueForConfigurationKey:(id)arg0 ;
-(id)promptValueForSettingsKey:(id)arg0 withLocalizedKey:(id)arg1 defaultValue:(id)arg2 ;


@end


#endif