// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABDOWNLOADANDSAVESETTINGSOPERATION_H
#define FABDOWNLOADANDSAVESETTINGSOPERATION_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FABNetworkOperation;
@class FABNetworkClient;
@protocol FABDownloadAndSaveSettingsOperationDelegate;

@interface FABDownloadAndSaveSettingsOperation : FABNetworkOperation

@property (readonly, nonatomic) NSURL *settingsURL; // ivar: _settingsURL
@property (readonly, nonatomic) NSFileManager *fileManager; // ivar: _fileManager
@property (readonly, nonatomic) NSString *settingsDirectoryPath; // ivar: _settingsDirectoryPath
@property (readonly, nonatomic) NSString *settingsFilePath; // ivar: _settingsFilePath
@property (readonly, nonatomic) NSString *installIdentifier; // ivar: _installIdentifier
@property (readonly, weak, nonatomic) FABNetworkClient *networkClient; // ivar: _networkClient
@property (readonly, nonatomic) NSObject<FABDownloadAndSaveSettingsOperationDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSError *error; // ivar: _error


-(id)initWithAPIKey:(id)arg0 ;
-(id)initWithAPIKey:(id)arg0 delegate:(id)arg1 settingsURL:(id)arg2 settingsDirectoryPath:(id)arg3 settingsFilePath:(id)arg4 fileManager:(id)arg5 installIdentifier:(id)arg6 networkClient:(id)arg7 ;
-(id)mutableRequestWithDefaultHTTPHeaderFieldsAndTimeoutForURL:(id)arg0 ;
-(void)main;


@end


#endif