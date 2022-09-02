// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISINTEGRATIONHELPER_H
#define ISINTEGRATIONHELPER_H


#import <Foundation/Foundation.h>


@interface ISIntegrationHelper : NSObject



+(void)validateIntegration;
+(void)validateAdapter:(id)arg0 frameworksSet:(id)arg1 ;
+(BOOL)doesAdapterSupportBanners:(id)arg0 ;
+(BOOL)areSystemFrameworksValidated:(id)arg0 frameworksInProject:(id)arg1 ;
+(void)validateAppTransportSecurity;


@end


#endif