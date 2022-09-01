// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CONFIGURATIONDELEGATE_H
#define CONFIGURATIONDELEGATE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ConfigurationDownloaderDelegate;

@interface ConfigurationDelegate : NSObject <ConfigurationDownloaderDelegate>

 {
    NSArray *mMandatoryFiles;
}


@property (retain, nonatomic) NSString *cryptoPassword; // ivar: mCryptoPassword
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(id)configurationMandatoryFiles;
-(void)configurationLoaded;
-(void)configurationLoadedWithDownloadInProgress:(id)arg0 ;
-(void)fileDownloadComplete:(id)arg0 ;
-(void)throttleDownConfigurationDownloads;
-(void)throttleToDefaultConfigurationDownloadSpeed;


@end


#endif