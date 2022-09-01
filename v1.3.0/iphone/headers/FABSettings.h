// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABSETTINGS_H
#define FABSETTINGS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FABSettings : NSObject

@property (retain, nonatomic) NSDictionary *settingsDictionary; // ivar: _settingsDictionary
@property (retain, nonatomic) NSString *settingsPath; // ivar: _settingsPath
@property (retain, nonatomic) NSFileManager *fileManager; // ivar: _fileManager
@property (readonly, nonatomic) BOOL appNeedsOnboarding;
@property (readonly, nonatomic) BOOL appUpdateRequired;
@property (readonly, nonatomic) BOOL reportingEnabled; // ivar: _reportingEnabled
@property (readonly, nonatomic) BOOL errorReportingEnabled; // ivar: _errorReportingEnabled
@property (readonly, nonatomic) NSNumber *logBufferSize; // ivar: _logBufferSize
@property (readonly, nonatomic) NSNumber *maxErrors; // ivar: _maxErrors
@property (readonly, nonatomic) NSNumber *maxCustomKeys; // ivar: _maxCustomKeys


-(id)initWithSettingsPath:(id)arg0 fileManager:(id)arg1 ;
-(id)appBundleIdentifier;
-(id)appPlatform;
-(id)appBuildVersion;
-(id)appDisplayVersion;
-(id)appSource;
-(id)appSettings;
-(id)appStatus;
-(void)clearSettingsDictionary;
-(id)settingsURLForEndpoint:(id)arg0 appInstanceIdentifer:(id)arg1 ;


@end


#endif